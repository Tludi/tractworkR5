require "rails_helper"

RSpec.describe TimePunchesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/time_punches").to route_to("time_punches#index")
    end

    it "routes to #new" do
      expect(:get => "/time_punches/new").to route_to("time_punches#new")
    end

    it "routes to #show" do
      expect(:get => "/time_punches/1").to route_to("time_punches#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/time_punches/1/edit").to route_to("time_punches#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/time_punches").to route_to("time_punches#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/time_punches/1").to route_to("time_punches#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/time_punches/1").to route_to("time_punches#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/time_punches/1").to route_to("time_punches#destroy", :id => "1")
    end

  end
end
