ActiveAdmin.register ProjectImage do
  # Permit parameters for strong parameters
  permit_params :project_id, :image_type, :image

  remove_filter :image_attachments
  remove_filter :image_blobs
  
  # Remove the image field from search filters (if applicable)
  filter :project_id
  filter :image_file_name  # You can filter by the image's file name if needed
  
  # Customize the form for creating/updating project images
  form do |f|
    f.inputs "Project Image Details" do
      # Allow the user to select a project from the existing projects
      f.input :project, as: :select, collection: Project.all.map { |p| [p.name, p.id] }
      f.input :image, as: :file  # File input for image upload
      f.input :image_type, as: :select, collection: ProjectImage.image_types.keys.map { |t| [t.titleize, t] }
    end
    f.actions
  end

 
end
