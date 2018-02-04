require 'rails_helper'

RSpec.describe "SubEventInformations", type: :request do
  describe "GET /sub_event_informations" do
    it "works! (now write some real specs)" do
      get sub_event_informations_path
      expect(response).to have_http_status(200)
    end
  end
end
