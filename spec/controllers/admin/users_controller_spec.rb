require 'rails_helper'

RSpec.describe Admin::UsersController, type: :controller do

  before :each do
    @user = create(:admin)
    login_user(@user, login_path)
    @account = @user.account
  end

  describe "GET #index" do
    it 'renders the index template' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET #show" do
    it "assigns the requested user as @user" do
      # user = User.create! valid_attributes
      get :show, :id => @user.id
      expect(assigns(:user)).to eq(@user)
    end
  end

  describe "GET #new" do
    it "has a route for #new action" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "GET #edit" do
    it "assigns the requested user as @user" do
      get :edit, :id => @user.id
      expect(assigns(:user)).to eq(@user)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new User" do
        @user_attr = attributes_for(:user)
        expect(post :create, {:user => @user_attr}).to change(User, :count).by(1)
      end

      # it "assigns a newly created user as @user" do
      #   post :create, {:user => valid_attributes}, valid_session
      #   expect(assigns(:user)).to be_a(User)
      #   expect(assigns(:user)).to be_persisted
      # end

      # it "redirects to the created user" do
      #   post :create, {:user => valid_attributes}, valid_session
      #   expect(response).to redirect_to(User.last)
      # end
    end

    # context "with invalid params" do
    #   it "assigns a newly created but unsaved user as @user" do
    #     post :create, {:user => invalid_attributes}, valid_session
    #     expect(assigns(:user)).to be_a_new(User)
    #   end

    #   it "re-renders the 'new' template" do
    #     post :create, {:user => invalid_attributes}, valid_session
    #     expect(response).to render_template("new")
    #   end
    # end
  end

  # describe "PUT #update" do
  #   context "with valid params" do
  #     let(:new_attributes) {
  #       skip("Add a hash of attributes valid for your model")
  #     }

  #     it "updates the requested user" do
  #       user = User.create! valid_attributes
  #       put :update, {:id => user.to_param, :user => new_attributes}, valid_session
  #       user.reload
  #       skip("Add assertions for updated state")
  #     end

  #     it "assigns the requested user as @user" do
  #       user = User.create! valid_attributes
  #       put :update, {:id => user.to_param, :user => valid_attributes}, valid_session
  #       expect(assigns(:user)).to eq(user)
  #     end

  #     it "redirects to the user" do
  #       user = User.create! valid_attributes
  #       put :update, {:id => user.to_param, :user => valid_attributes}, valid_session
  #       expect(response).to redirect_to(user)
  #     end
  #   end

  #   context "with invalid params" do
  #     it "assigns the user as @user" do
  #       user = User.create! valid_attributes
  #       put :update, {:id => user.to_param, :user => invalid_attributes}, valid_session
  #       expect(assigns(:user)).to eq(user)
  #     end

  #     it "re-renders the 'edit' template" do
  #       user = User.create! valid_attributes
  #       put :update, {:id => user.to_param, :user => invalid_attributes}, valid_session
  #       expect(response).to render_template("edit")
  #     end
  #   end
  # end

  # describe "DELETE #destroy" do
  #   it "does not have a route for #destroy action" do
  #     expect{ delete :destroy }.to raise_error(ActionController::UrlGenerationError)
  #   end
    # it "destroys the requested user" do
    #   user = User.create! valid_attributes
    #   expect {
    #     delete :destroy, {:id => user.to_param}, valid_session
    #   }.to change(User, :count).by(-1)
    # end

    # it "redirects to the users list" do
    #   user = User.create! valid_attributes
    #   delete :destroy, {:id => user.to_param}, valid_session
    #   expect(response).to redirect_to(users_url)
    # end
  # end

end
