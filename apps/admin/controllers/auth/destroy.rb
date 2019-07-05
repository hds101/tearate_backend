module Admin
  module Controllers
    module Auth
      class Destroy
        include Admin::Action

        def call(params)
          session[:user_id] = nil
          redirect_to routes.new_auth_path
        end
      end
    end
  end
end
