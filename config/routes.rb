Rails.application.routes.draw do
  resources :gossips do 
    resources :comments
  end
  resources :cities
  resources :users

  root 'index#home'
  get '/team', to: 'index#team'
  get '/contact', to: 'index#contact'
  get '/welcome/:name', to: 'index#welcome' 
end
