require "rails_helper"

RSpec.describe Admin::CsiDivisionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/admin/csi_divisions").to route_to("admin/csi_divisions#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/csi_divisions/new").to route_to("admin/csi_divisions#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/csi_divisions/1").to route_to("admin/csi_divisions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/csi_divisions/1/edit").to route_to("admin/csi_divisions#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/admin/csi_divisions").to route_to("admin/csi_divisions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/csi_divisions/1").to route_to("admin/csi_divisions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/csi_divisions/1").to route_to("admin/csi_divisions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/csi_divisions/1").to route_to("admin/csi_divisions#destroy", :id => "1")
    end
  end
end
