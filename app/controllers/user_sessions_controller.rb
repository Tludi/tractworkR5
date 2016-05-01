class UserSessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      case @user.role
      when "Admin", "SuperUser"
        redirect_to(admin_root_path)
      when "Crew", "Supervisor"
        redirect_to(dashboard_path, notice: "welcome")
      else 
        redirect_to(dashboard_path, notice: "welcome")
      end
      # redirect_back_or_to(:dashboard, notice: "Login Successful")
    else
      flash.now[:alert] = 'Login Failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(root_path, notice: 'Logged out!')
  end
end
