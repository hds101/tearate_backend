module Admin
  module Authentication
    def self.included(action)
      action.class_eval do
        before :authenticate!
        expose :current_user
      end
    end

    private

    def authenticate!
      redirect_to routes.new_auth_path unless authenticated?
    end

    def authenticated?
      !!current_user && current_user.superadmin == true
    end

    def current_user
      @current_user ||= UserRepository.new.find(session[:user_id])
    end
  end
end