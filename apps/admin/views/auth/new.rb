module Admin
  module Views
    module Auth
      class New
        include Admin::View

        def form
          Form.new(:auth, routes.auth_path)
        end
      end
    end
  end
end
