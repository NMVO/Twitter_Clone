Rails.application.routes.draw do
  
  root 'tweets#index'

  get '/show' => 'tweets#show'

  devise_for :users
  resources :tweets
  
end
