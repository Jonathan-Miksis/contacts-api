Rails.application.routes.draw do
  get "/first_contact", controller: "contacts", action: "first_contact"
end
