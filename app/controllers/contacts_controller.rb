class ContactsController < ApplicationController
  def first_contact
    contact1 = Contact.first
    render json: {contact: contact1}
  end

end
