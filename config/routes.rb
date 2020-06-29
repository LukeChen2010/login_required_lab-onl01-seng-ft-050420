Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/secret' => 'secrets#show'
  get '/session' => 'sessions#new'
  get '/session' => 'sessions#create'
  get '/application' => 'application#index'
end
