Rails.application.routes.draw do
  get 'favorites/index'
  get 'favorites/create'
  get 'favorites/destroy'
  get 'users/show'
  root 'pages#index'
  get 'pages/help'

  devise_for :users
  resources :topic_us do
    resources :topic_ds
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
