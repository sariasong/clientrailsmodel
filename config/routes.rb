Rails.application.routes.draw do

  get 'static_clients/home'

  get 'static_clients/about'

  root 'static_clients#home'

  get '/about', to: 'static_clients#about'

resources :clients
end
