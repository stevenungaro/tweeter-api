Rails.application.routes.draw do
  get "/relationships" => "relationships#index"
  post "/relationships" => "relationships#create"
end
