Rails.application.routes.draw do
  root :to => 'lines#index'

  resources :lines

  resources :stations

  resources :stops

end
