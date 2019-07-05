# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/

root to: 'dashboard#index'
resources :dashboard, only: :index

resources :users
resources :teas
