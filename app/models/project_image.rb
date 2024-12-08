class ProjectImage < ApplicationRecord
  include ImageUploader::Attachment(:image)

  belongs_to :project, optional: true

  enum image_type: {
    project: 0, 
    gallery: 1, 
    background: 2
  }
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "image_data", "project_id", "updated_at"]
  end
end
