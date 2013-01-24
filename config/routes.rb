Rufio::Application.routes.draw do
  resources :environments
  resources :events
  root :to => 'environments#index'
end
