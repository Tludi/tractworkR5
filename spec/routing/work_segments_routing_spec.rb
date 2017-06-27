require "rails_helper"

RSpec.describe WorkSegmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/work_segments").to route_to("work_segments#index")
    end

    it "routes to #new" do
      expect(:get => "/work_segments/new").to route_to("work_segments#new")
    end

    it "routes to #show" do
      expect(:get => "/work_segments/1").to route_to("work_segments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/work_segments/1/edit").to route_to("work_segments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/work_segments").to route_to("work_segments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/work_segments/1").to route_to("work_segments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/work_segments/1").to route_to("work_segments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/work_segments/1").to route_to("work_segments#destroy", :id => "1")
    end

  end
end
