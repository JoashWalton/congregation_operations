Rails.application.routes.draw do
  resources :public_speakers
  resources :kingdom_halls
  resources :congregations
  resources :contact_informations
  resources :publishers
  resources :souls
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
