class DeviceLocation < ActiveRecord::Base
  validates :locaiton_id, :presence => true

  belongs_to :device
  belongs_to :location
end
