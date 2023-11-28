Rails.application.routes.draw do
  get "/relationships" => "relationships#index"
  post "/relationships" => "relationships#create"
  get "/relationships/:id" => "relationships#show"
  delete "/relationships/:id" => "relationships#destroy"
end
