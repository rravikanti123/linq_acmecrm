class ContactsController < ApplicationController
  # POST /contacts
  # Receives a contact and stores it in the database
  def create
    contact = Contact.create!(contact_params)

    render json: {
      message: "Contact successfully pushed to AcmeCRM",
      contact: contact
    }, status: :created
  end

  # GET /contacts
  # Returns a list of all contacts
  def index
    contacts = Contact.all

    render json: {
      count: contacts.size,
      contacts: contacts
    }, status: :ok
  end

  private

  # Strong parameters to whitelist incoming contact fields
  def contact_params
    params.permit(:first_name, :last_name, :email, :company)
  end
end
