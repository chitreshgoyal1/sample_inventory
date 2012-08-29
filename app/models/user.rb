class User < ActiveRecord::Base
  # :token_authenticatable, :lockable, :timeoutable, :activatable, :registerable, :confirmable, :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable

  attr_accessor :email, :password, :password_confirmation
  
  before_save :encrypt_password

  validates :username, :presence => true, 
                       :uniqueness => true
  validates :password, :presence => true, :on => :create,
                       :confirmation => true,
                       :length => { :within => 5..32 }
	validates :email, :presence => true,
	                  :uniqueness => true,
	                  :format => { :with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i }
	validates :first_name, :presence => true
	validates :last_name, :presence => true
	validates :group_id, :presence => true
	validates :active, :presence => true
	
	belongs_to :group
  has_many :audit
  
  # checks for correct password
  def self.authenticate(username, password)
    user = find_by_username(username)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
  # encrypts the password
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
  
  # helper for full user name
  def user_full_name
    first_name + " " + last_name
  end

  # checks against role
  def role?(role)
    if role == group.group_name.to_s
      true
    end
  end

  # returns group
  def role
    if :current_user
      role = group.group_name.to_s
    end
  end

end
