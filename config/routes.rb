Rails.application.routes.draw do
  get "/first_contact", controller: "contacts", action: "first_contact"
  get "/contacts", controller: "contacts", action: "all_contacts"
  get "/last_contact", controller: "contacts", action: "last_contact"
end
