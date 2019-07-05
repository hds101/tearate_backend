# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/

root to: 'dashboard#show'
resource :dashboard, only: :show
resource :auth, only: %i[new create destroy]

resources :users
resources :teas
