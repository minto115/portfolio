Rails.application.routes.draw do
  get 'posts/index'

  root 'static_pages#top'
  get 'about', to: "static_pages#about"
  get '/signup' , to: "users#new"
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
