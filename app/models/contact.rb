require 'city-state'

class Contact < ApplicationRecord
  validates :name, presence: true
  validates :contact, presence: true, uniqueness: true
  validates :state, presence: true
  validates :city, presence: true

  after_commit :send_welcome_notification

  def states
    CS.states(:in).values
  end

  def cities(state, country)
    CS.cities(state, country)
  end

  private

  def send_welcome_notification
    NotificationsMailer.welcome_email(self).deliver_now
  end
end
