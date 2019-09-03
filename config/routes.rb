Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/help'

  devise_for :users
  resources :topic_us
  resources :topic_ds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
