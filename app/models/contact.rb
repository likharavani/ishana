class Contact < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :contact, presence: true, uniqueness: true
  validates :state, presence: true
  validates :city, presence: true
end
