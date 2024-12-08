class ProjectImage < ApplicationRecord
  include ImageUploader::Attachment(:image)

  belongs_to :project, optional: true

  enum image_type: {
    project_related: 0, 
    scroll_image: 1, 
    background: 2,
    grid_image: 3,
    design_crave: 4,
    what_we_offer: 5,
    why_choose_us: 6

  }
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "image_data", "project_id", "updated_at"]
  end
end
