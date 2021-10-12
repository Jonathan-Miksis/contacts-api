class ContactsController < ApplicationController
  def first_contact
    contact1 = Contact.first
    render json: {contact: contact1}
  end
  def all_contacts
    contacts = Contact.all
    render json: contacts.as_json
  end

end
