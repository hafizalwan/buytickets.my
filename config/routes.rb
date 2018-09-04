Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :activities, except: [:edit] do
    member do
      get 'listing'
      get 'price'
      get 'description'
      get 'photos'
      get 'location'
    end
  end
end
