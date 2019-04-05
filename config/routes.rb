Rails.application.routes.draw do
 # resources :users
 #get '/welcome' => 'welcome#home'
  get '/auth/facebook/callback' => 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
