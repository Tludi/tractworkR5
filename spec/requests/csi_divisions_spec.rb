require 'rails_helper'

RSpec.describe "CsiDivisions", type: :request do
  describe "GET /csi_divisions" do
    it "works! (now write some real specs)" do
      get csi_divisions_path
      expect(response).to have_http_status(200)
    end
  end
end
