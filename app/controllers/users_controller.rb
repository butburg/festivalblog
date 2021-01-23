class UsersController < ApplicationController

  before_action :skip_password_attribute, only: :update
  before_action :is_admin?, except: [:show, :new, :create]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      reset_session
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_role)
      redirect_to users_path, notice: "User updated."
    else
      redirect_to users_path, alert: "Unable to update user."
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_url
  end

  private

    def skip_password_attribute
      if params[:password].blank? && params[:password_confirmation].blank?
        params.except(:password, :password_confirmation)
      end
    end

    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :role)
    end

    def user_role
      params.require(:user).permit(:role)
    end

end
