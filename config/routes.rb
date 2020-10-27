Rails.application.routes.draw do
  resources :gossip

  root 'index#home'
  get '/team', to: 'index#team'
  get '/contact', to: 'index#contact'
  get '/welcome/:name', to: 'index#welcome' 
  #get '/gossip/:id', to: 'index#gossip', as: 'gossip'
  get '/user/:id', to: 'index#user', as: 'user'
end
