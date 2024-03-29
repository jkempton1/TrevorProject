class ApplicationController < ActionController::Base
    before_action :set_current_user
    
    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
        end
    end

    def require_user_logged_in!
        redirect_to sign_in_path, alert: "You must be signed in to access this page" if Current.user.nil?
    end

    def require_user_logged_out!
        if session[:user_id].present?
        redirect_to root_path, notice: "You are already signed in"
        end
    end
end
