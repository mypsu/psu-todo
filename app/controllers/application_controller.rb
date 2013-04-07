class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper



   def handle_unverified_request
    sign_out
    super
   end

   def authorize
   	redirect_to root_url, alert: "Not Authorized, Please Log In or Register" if current_user.nil?
   end
end
