Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users

  resources :users, only: [:show]
  resources :activities, except: [:edit] do
    member do
      get 'listing'
      get 'details'
      get 'photos'
      get 'location'
      get 'price'
    end
  end

end
