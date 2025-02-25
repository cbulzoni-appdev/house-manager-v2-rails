class ApplicationController < ActionController::Base
  include Pundit
  before_action :authenticate_user!

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private
    def user_not_authorized
      flash[:alert] = "You are not authorized to perform this action."
      
      redirect_back(fallback_location: root_url)
    end
end
