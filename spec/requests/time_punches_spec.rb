require 'rails_helper'

RSpec.describe "TimePunches", type: :request do
  describe "GET /time_punches" do
    it "works! (now write some real specs)" do
      get time_punches_path
      expect(response).to have_http_status(200)
    end
  end
end
