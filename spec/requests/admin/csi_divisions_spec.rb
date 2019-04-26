require 'rails_helper'

RSpec.describe "Admin::CsiDivisions", type: :request do
  describe "GET /admin/csi_divisions" do
    it "works! (now write some real specs)" do
      get admin_csi_divisions_path
      expect(response).to have_http_status(200)
    end
  end
end
