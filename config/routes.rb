Rails.application.routes.draw do
  root 'gossipproject#home'
  get '/team', to: 'gossipproject#team'
  get '/contact', to: 'gossipproject#contact'
  get '/welcome/:name', to: 'gossipproject#welcome' 
  get '/gossip/:id', to: 'gossipproject#gossip', as: 'gossip'
  get '/user/:id', to: 'gossipproject#user', as: 'user'
end
