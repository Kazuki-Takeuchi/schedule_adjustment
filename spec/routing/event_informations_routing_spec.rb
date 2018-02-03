require "rails_helper"

RSpec.describe EventInformationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/event_informations").to route_to("event_informations#index")
    end

    it "routes to #new" do
      expect(:get => "/event_informations/new").to route_to("event_informations#new")
    end

    it "routes to #show" do
      expect(:get => "/event_informations/1").to route_to("event_informations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/event_informations/1/edit").to route_to("event_informations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/event_informations").to route_to("event_informations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/event_informations/1").to route_to("event_informations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/event_informations/1").to route_to("event_informations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/event_informations/1").to route_to("event_informations#destroy", :id => "1")
    end

  end
end
