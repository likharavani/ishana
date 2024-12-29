class NotificationsMailer < ApplicationMailer

  def welcome_email(obj)
    byebug
    @email = obj.email
    @name = obj.name
    mail(to: @email, subject: "Welcome to Ishana Interio – Let's Create Beautiful Spaces Together!")
  end
end
