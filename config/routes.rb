Rails.application.routes.draw do



  get 'comments/create'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "colleges#index"

  resources :colleges

  get '/posts/:college' => 'posts#index' , as:'posts'
  post '/posts/:college' => 'posts#create'
  delete '/posts/:id' => 'posts#destroy' , as:'post'
  # resources :posts, only: [:create] 4

  get '/user/:id' => 'users#profile' , as: 'user_profile'

  resources :comments
  resources :likes , only: [:create]
  


end
