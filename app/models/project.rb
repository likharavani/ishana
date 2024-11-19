class Project < ApplicationRecord
  has_many_attached :images

  validates :name, :address,  presence: true
  validates :description, presence: true
  
  def self.ransackable_attributes(auth_object = nil)
    %w[address created_at description id name updated_at]
  end

  # Define associations as searchable if needed
  def self.ransackable_associations(auth_object = nil)
    []
  end
end
