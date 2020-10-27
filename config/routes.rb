Rails.application.routes.draw do
  resources :gossips

  root 'index#home'
  get '/team', to: 'index#team'
  get '/contact', to: 'index#contact'
  get '/welcome/:name', to: 'index#welcome' 
  get '/user/:id', to: 'index#user', as: 'user'
end
