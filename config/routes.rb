Rails.application.routes.draw do
  resources :gossips do 
    resources :comments
    resources :likes
  end
  resources :cities
  resources :users
  resources :sessions


  root 'index#home'
  get '/team', to: 'index#team'
  get '/contact', to: 'index#contact'
  get '/welcome/:name', to: 'index#welcome' 
end
