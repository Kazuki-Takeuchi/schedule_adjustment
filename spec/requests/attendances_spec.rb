require 'rails_helper'

RSpec.describe "Attendances", type: :request do
  describe "参加登録" do
    before :each do
      @user = FactoryBot.create :user
      @sub_event_information = FactoryBot.build :sub_event_information do |s|
        s.event_information = FactoryBot.create :event_information
      end
      @sub_event_information.save
    end

    it "参加登録、解除 ログインなし" do
      path = attend_event_information_sub_event_information_attendance_path(@sub_event_information.event_information, @sub_event_information)
      expect{ post path, xhr: true }.to raise_error(CanCan::AccessDenied)
      delete_path = event_information_sub_event_information_attendance_path(@sub_event_information.event_information, @sub_event_information)
      expect{ delete delete_path, xhr: true }.to raise_error(CanCan::AccessDenied)
    end

    it "参加登録、解除 ログイン" do
      sign_in @user

      path = attend_event_information_sub_event_information_attendance_path(@sub_event_information.event_information, @sub_event_information)
      post path, xhr: true
      expect(response).to have_http_status(200)

      delete_path = event_information_sub_event_information_attendance_path(@sub_event_information.event_information, @sub_event_information)
      delete delete_path, xhr: true
      expect(response).to have_http_status(200)      
    end
  end
end
