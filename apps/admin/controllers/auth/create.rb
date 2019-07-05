module Admin
  module Controllers
    module Auth
      class Create
        include Admin::Action

        def call(params)
          user = find_by_email(params[:auth][:email])
          if !user.nil? && user.password == params[:auth][:password]
            session[:user_id] = user.id
            redirect_to routes.dashboard_path
          else
            redirect_to routes.new_auth_path
          end
        end

        private

        def find_by_email(email)
          repo = UserRepository.new
          repo.users.where(email: email).as(User).one
        end

        def authenticate!; end
      end
    end
  end
end
