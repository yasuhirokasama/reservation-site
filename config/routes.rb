Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'consultations#new'

  resources :consultations, only: [:new, :create]

  devise_for :administrators

  namespace :admin do
    resources :consultations
  end
end
