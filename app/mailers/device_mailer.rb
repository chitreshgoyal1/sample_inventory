class DeviceMailer < ActionMailer::Base
  default :from => "inventory@wirelessdx.com"

  def problem_device(device)
    @device = device
    mail(:to => "pruitt@wirelessdx.com", :subect => "testing")
  end

  

end
