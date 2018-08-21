class ApplicationController < ActionController::Base
  # helper_method :current_user, :signed_in?
  # before_action :signin_required
  #
  # def signin_required
  #   if !signed_in?
  #     redirect_to signin_path, :notice => "Please sign in to view pictures. It only takes a moment!"
  #   end
  # end
  #
  # def signed_in?
  #   !!current_user
  # end
  #
  # def current_user
  #   if session[:user_id]
  #     @current_user = User.find(session[:user_id])
  #     @current_user
  #   else
  #     false
  #   end
  # end

end
