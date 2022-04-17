Rails.application.routes.draw do
 
  
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/airports" => "airports#create"
  post "/favorites" => "favorites#create"

  delete "/users/:id" => "users#destroy"
  delete "/favorites/:id" => "favorites#destroy"

  patch "/users" => "users#update"
  

  

end
