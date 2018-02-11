require 'rails_helper'

RSpec.describe EventInformation, type: :model do
  describe "EventInformation　model" do
    it "参加者数" do
      eventInformation = EventInformation.new
      eventInformation.attendee_count
      expect(eventInformation.attendee_count).to eq(0) 
    end
  end
end
