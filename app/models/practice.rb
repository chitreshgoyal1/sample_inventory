class Practice < ActiveRecord::Base
  validates :practice_name, :presence => true
  
  has_many :locations
  has_many :patients, :through => :locations
  has_many :devices, :through => :patients
  has_many :patient_assignments, :through => :patients
  
  accepts_nested_attributes_for :locations, :patients, :devices, :patient_assignments
end
