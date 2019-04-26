require "rails_helper"

RSpec.describe CsiDivisionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/csi_divisions").to route_to("csi_divisions#index")
    end

    it "routes to #new" do
      expect(:get => "/csi_divisions/new").to route_to("csi_divisions#new")
    end

    it "routes to #show" do
      expect(:get => "/csi_divisions/1").to route_to("csi_divisions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/csi_divisions/1/edit").to route_to("csi_divisions#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/csi_divisions").to route_to("csi_divisions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/csi_divisions/1").to route_to("csi_divisions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/csi_divisions/1").to route_to("csi_divisions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/csi_divisions/1").to route_to("csi_divisions#destroy", :id => "1")
    end
  end
end
