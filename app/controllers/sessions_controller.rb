class SessionsController < ApplicationController
# skip_before_action :signin_required, :only => [:signin, :create]
#    def signin
#     @user = User.new
#   end
#
#    def create
#     user = User.find_by(username: params[:username])
#     if user && user.authenticate(params[:password])
#         session[:user_id] = user.id
#         redirect_to users_path, :notice => "Welcome back, #{user.username}"
#     else
#         flash.now.alert = "Invalid password, please enter again."
#         render "signin"
#     end
#   end
#    def signout
#     session[:user_id] = nil
#     redirect_to users_path
#   end
end
