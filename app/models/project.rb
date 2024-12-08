class Project < ApplicationRecord
  include ImageUploader::Attachment(:image)

  has_many :project_images, dependent: :destroy
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
