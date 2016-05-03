class Admin::UsersController < Admin::AdminController
  before_action :set_account

  def index
    @users = @account.users.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = @account.users.new(user_params)
    # @userRoles = Role.where.not(name: "SuperUser")
    # @userRoles = Role.all

    respond_to do |format|
      if @user.save
        format.html { redirect_to admin_users_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_account
    @account = current_user.account
  end


end
