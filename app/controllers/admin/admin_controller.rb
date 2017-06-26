class Admin::AdminController < ApplicationController
  layout 'admin'
  before_action :require_login
  before_action :require_admin

  private
  def require_admin
    unless current_user.role == "Admin"
      redirect_to dashboard_url
    end
  end
end
