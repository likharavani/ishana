class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    byebug
    @contact = Contact.new(email: params[:email], name: params[:name], contact: params[:contact], city: params[:city], state: params[:state], budget: params[:budget], project_area: params[:project_area])
    if @contact.save
      render json: { success: true, message: 'Thank you for reaching out!' }
    else
      render json: { success: false, message: @contact.errors.full_messages.join(', ') }
    end
  end
end
