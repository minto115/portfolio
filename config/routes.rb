Rails.application.routes.draw do
  root 'static_pages#top'
  get 'about', to: "static_pages#about"
  get '/signup', to: "users#new"
  get 'posts/index'
  get '/login', to: 'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
