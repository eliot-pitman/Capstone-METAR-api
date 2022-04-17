Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/airports" => "airports#create"
  post "/favorites" => "favorites#create"

  delete "/users/:id" => "users#destroy"
  delete "/favorites/:id" => "favorites#destroy"

  patch "/users/:id" => "users#update"
  

  

end
