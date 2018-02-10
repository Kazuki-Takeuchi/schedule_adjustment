require "rails_helper"

RSpec.describe SubEventInformationsController, type: :routing do
  describe "routing" do

    it "routes to #new" do
      expect(:get => "/event_informations/1/sub_event_informations/new").to route_to("sub_event_informations#new", :event_information_id => "1")
    end

    it "routes to #show" do
      expect(:get => "/event_informations/1/sub_event_informations/1").to route_to("sub_event_informations#show", :id => "1", :event_information_id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/event_informations/1/sub_event_informations/1/edit").to route_to("sub_event_informations#edit", :id => "1", :event_information_id => "1")
    end

    it "routes to #create" do
      expect(:post => "/event_informations/1/sub_event_informations").to route_to("sub_event_informations#create", :event_information_id => "1")
    end

    it "routes to #update via PUT" do
      expect(:put => "/event_informations/1/sub_event_informations/1").to route_to("sub_event_informations#update", :id => "1", :event_information_id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/event_informations/1/sub_event_informations/1").to route_to("sub_event_informations#update", :id => "1", :event_information_id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/event_informations/1/sub_event_informations/1").to route_to("sub_event_informations#destroy", :id => "1", :event_information_id => "1")
    end

  end
end
