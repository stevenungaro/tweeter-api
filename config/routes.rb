Rails.application.routes.draw do
  get "/relationships" => "relationships#index"
  post "/relationships" => "relationships#create"
  get "/relationships/:id" => "relationships#show"
  delete "/relationships/:id" => "relationships#destroy"
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"
end
