Rufio::Application.routes.draw do
  resources :environments
  resources :events
  resources :settings, only: :index
  root :to => 'environments#index'
end
