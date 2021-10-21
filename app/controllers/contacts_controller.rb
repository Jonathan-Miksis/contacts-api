class ContactsController < ApplicationController
  def show
    contact = Contact.find_by(id: params[:id])
    render json: contact.as_json
  end

  def index
    contacts = Contact.all
    render json: contacts.as_json
  end

  def create
    contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name], 
      email: params[:email],
      phone_number: params[:phone_number],
      latitude: params[:latitude],
      longitude: params[:longitude]
    )
    contact.save
    render json: contact.as_json
  end



end
