require 'rails_helper'

RSpec.describe "WorkSegments", type: :request do
  describe "GET /work_segments" do
    it "works! (now write some real specs)" do
      get work_segments_path
      expect(response).to have_http_status(200)
    end
  end
end
