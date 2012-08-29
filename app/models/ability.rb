class Ability
  include CanCan::Ability
  
  user ||= User.new # anonymous user
  
  def initialize(user)
    if user.role?("Admin")
      can :manage, :all
    elsif user.role?("Staff")
      can :manage, :all
      cannot :manage, User
    else
      can :read, Device
      can :read, DeviceProblem
      can :read, DeviceLocation
      can :read, DeviceType
      can :read, Disposable
      can :read, DisposableType
      can :read, DeviceStatus
      can :read, Location
      can :read, LocationType
      can :read, Patient
      can :read, Practice
    end
  end

end
