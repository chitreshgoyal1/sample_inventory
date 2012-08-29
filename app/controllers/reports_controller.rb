class ReportsController < ApplicationController
  layout nil

  # reports/all_locations_summary
  def all_locations_summary
    @locations = Location.where( :active => TRUE ).order( "location_name ASC" )
  end
  
  # reports/device_problems
  def problematic_devices
    @problems = DeviceProblem.all
#    @devices = Device.where( "device_status_id = ?", 3 ).includes( :device_status ).page(params[:page]).per(20)
  end
  
  # reports/devices_in_use
  def devices_in_use
    @devices = Device.where( :device_status_id => 2 )
  end
  
  # reports/location_status/:id
  def location_summary
    @location = Location.find(params[:id])
  end

end
