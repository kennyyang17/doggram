class UsersController < ApplicationController
skip_before_action :signin_required, :only => [:signup, :create, :index]

  def index
    @users = User.all
  end

  def signup
   @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to users_signup_path
    end
  end

  def show
    @user = User.find(params[:id])
    @pictures = @user.pictures
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      redirect_to edit_user_path
    end
  end


  def destroy
  end


  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
