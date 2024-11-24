require 'city-state'

class Contact < ApplicationRecord
  validates :name, presence: true
  validates :contact, presence: true, uniqueness: true
  validates :state, presence: true
  validates :city, presence: true

  def states
    CS.states(:in).values
  end

  def cities(state, country)
    CS.cities(state, country)
  end
end
