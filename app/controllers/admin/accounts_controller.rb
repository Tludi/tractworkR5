# accounts_controller.rb
class Admin::AccountsController < ApplicationController
  skip_before_action :require_login

  def new
    @account = Account.new
    @account.users.build
  end

  def create
    @account = Account.new(account_params)
    # @account.users.first.role = "Admin"
    respond_to do |format|
      if @account.save
        firstUser = @account.users.first
        firstUser.update_attributes role: "Admin"
        @account.projects.create(name: "General Work")
        format.html { redirect_to login_path, notice: "Hi #{@account.users.first.firstName}! Your account was created. Now..." }
      else
        format.html { render :new, notice: 'Something went wrong. Check your particles.' }
      end
    end
  end

  private

  def account_params
    params.require(:account).permit(:name, :time_zone, users_attributes: [:id, :firstName, :lastName, :email, :password, :password_confirmation, :role, :account_id])
  end
end
