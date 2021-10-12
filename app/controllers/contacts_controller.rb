class ContactsController < ApplicationController
  def first_contact
    contact1 = Contact.first
    render json: {contact: contact1}
  end
  def all_contacts
    contacts = Contact.all
    render json: contacts.as_json
  end
  def last_contact
    contact_last = Contact.last
    render json: {contact: contact_last}
  end
end
