Rails.application.routes.draw do
  get "/contacts/:id" => "contacts#show"
  get "/contacts" => "contacts#index"
  get "/last_contact", controller: "contacts", action: "last_contact"

  post "/contacts" => "contacts#create"
end
