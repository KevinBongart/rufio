Rufio::Application.routes.draw do
  resources :environments
  resources :events
  root :to => 'environments#index'

  mount OpenSesame::Engine => OpenSesame.mount_prefix
end
