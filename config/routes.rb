Rails.application.routes.draw do
  get 'activities/index'
  get 'activities/new'
  get 'activities/create'
  get 'activities/update'
  get 'activities/show'
  get 'activities/listing'
  get 'activities/details'
  get 'activities/photos'
  get 'activities/location'
  get 'activities/price'
  root 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
