class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    byebug
    @contact = Contact.new(contact_params)
  
    if @contact.save
      render json: { success: true, message: 'Thank you for reaching out!' }
    else
      render json: { success: false, message: @contact.errors.full_messages.to_sentence }
    end
  end
  
  private
  
  def contact_params
    params.permit(:email, :name, :contact, :city, :state, :budget, :project_area)
  end
  
end
