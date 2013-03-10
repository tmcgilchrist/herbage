Herbage::Application.routes.draw do

  devise_for :gardeners

  resources :seeds
  resources :plants

  root :to => 'home#index'
end
