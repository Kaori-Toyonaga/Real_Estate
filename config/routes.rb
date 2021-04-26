Rails.application.routes.draw do
  get 'houses/index'
  resources :houses
end
