Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index', to: 'welcome#index', as: 'welcome_index'


  resources :users do
  	resources :products
  end
  #get '/users/new' => 'users#new', as: 'new_user' do resources :products end
  #post '/users', to: 'users#create', as: 'users' do resources :products end
  #get '/users/:id', to: 'users#show', as: 'user' do resources :products end


  get '/sessions/new' => 'sessions#new', as: 'login' 
  post '/sessions', to: 'sessions#create', as: 'sessions'

  #get '/products', to: 'products#index', as: 'products_index'
  #post '/products', to: 'products#create', as: 'products'
  #get '/products/new', to: 'products#new', as: 'new_product'
  #get '/products/:id', to: 'products#show', as: 'product'

  root 'welcome#index'
end
