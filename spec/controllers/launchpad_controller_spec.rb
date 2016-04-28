require 'rails_helper'

RSpec.describe LaunchpadController, type: :controller do
  describe 'Get #index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template :index
    end
  end
end
