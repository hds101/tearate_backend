module Admin
  module Controllers
    module Auth
      class New
        include Admin::Action

        def call(params)
        end

        private

        def authenticate!; end
      end
    end
  end
end
