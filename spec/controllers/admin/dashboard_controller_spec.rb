require 'rails_helper'

RSpec.describe Admin::DashboardController, type: :controller do
  before :each do
    @user = create(:admin)
    login_user(@user, login_path)
    # @account = @user.account
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
