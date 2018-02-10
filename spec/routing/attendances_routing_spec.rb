require "rails_helper"

RSpec.describe AttendancesController, type: :routing do
  describe "routing" do

    it "routes to #attend" do
      expect(:post => "/event_informations/1/sub_event_informations/1/attendance/attend").to route_to("attendances#attend", :event_information_id => "1", :sub_event_information_id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/event_informations/1/sub_event_informations/1/attendance").to route_to("attendances#destroy", :event_information_id => "1", :sub_event_information_id => "1")
    end

  end
end
