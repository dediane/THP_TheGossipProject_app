Rails.application.routes.draw do
  root 'gossipproject#home'
  get '/team', to: 'gossipproject#team'
  get '/contact', to: 'gossipproject#contact'
  get '/welcome/:name', to: 'gossipproject#welcome' 
end
