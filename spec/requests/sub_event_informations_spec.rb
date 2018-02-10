require 'rails_helper'

RSpec.describe "SubEventInformations", type: :request do
  describe "イベント詳細" do
    it "Index" do
      sub_event_information = FactoryBot.build :sub_event_information do |s|
        s.event_information = FactoryBot.create :event_information
      end
      sub_event_information.save

      get event_information_sub_event_information_path(sub_event_information.event_information, sub_event_information)
      expect(response).to have_http_status(200)
    end
  end
end
