Rails.application.routes.draw do
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  resources :users, except: [:new] # exclude :new so our signup page is /signup and not /users/new.
  resources :public_talk_outlines
  resources :public_speakers
  resources :kingdom_halls
  resources :congregations
  resources :contact_informations
  resources :publishers
  resources :souls
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
