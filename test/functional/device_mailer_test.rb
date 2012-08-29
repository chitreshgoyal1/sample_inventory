require 'test_helper'

class DeviceMailerTest < ActionMailer::TestCase
  tests DeviceMailer
  test "problem_device" do
    @expected.from    = "WirelessDxInventory@wirelessdx.com"
    @expected.to      = "pruitt@wirelessdx.com"
    @expected.subject = "Update from WirelessDx Inventory"
    @expected.body    = "Testing the tester"
    @expected.date    = Time.now
  end

end
