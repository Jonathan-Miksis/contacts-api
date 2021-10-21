Rails.application.routes.draw do
  get "/contacts/:id" => "contacts#show"
  
  get "/contacts" => "contacts#index"

  post "/contacts" => "contacts#create"
end
