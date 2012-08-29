class DashboardController < ApplicationController
  load_and_authorize_resource

  def index
    @locations = Location.all
    @problems = Device.where("device_status_id = ?", 3).includes(:device_status).page(params[:page]).per(20)
    @disposables = Disposable.all
  end

end
