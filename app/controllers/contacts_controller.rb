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
    results = Geocoder.search(params[:address])
    geo_latitude = results.first.coordinates[0]
    geo_longitude = results.first.coordinates[1]
    contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name], 
      email: params[:email],
      phone_number: params[:phone_number],
      latitude: geo_latitude,
      longitude: geo_longitude
    )
    contact.save
    render json: contact.as_json
  end



end
