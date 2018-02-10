require 'rails_helper'

RSpec.describe "EventInformations", type: :request do
  describe "イベント一覧" do
    it "Index" do
      get event_informations_path
      expect(response).to have_http_status(200)
    end
  end
end
