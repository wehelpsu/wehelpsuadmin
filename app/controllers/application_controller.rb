class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user_session, :current_user
  layout "customer"
  def check_seesion
    if current_user_session.present?
    return
    else
    redirect_to login_path
    end  
  end
  private
    def current_user_session
      logger.debug "things going wr8"
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end

    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.user
    end

end
