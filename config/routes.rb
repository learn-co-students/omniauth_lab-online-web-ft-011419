Rails.application.routes.draw do
  
  get '/auth/facebook/callback', to: 'sessions#create'
end
