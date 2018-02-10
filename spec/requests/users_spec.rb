require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "ユーザ一覧" do
    it "Index" do
      expect{ get users_path }.to raise_error(CanCan::AccessDenied)

      user = FactoryBot.create :user
      sign_in user

      get users_path
      expect(response).to have_http_status(200)
    end
  end
end
