class ContactsController < ApplicationController
  def show
    contact = Contact.find_by(id: params[:id])
    render json: contact.as_json
  end
  def index
    contacts = Contact.all
    render json: contacts.as_json
  end
  def last_contact
    contact_last = Contact.last
    render json: {contact: contact_last}
  end
end
