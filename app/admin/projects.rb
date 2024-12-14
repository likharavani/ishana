ActiveAdmin.register Project do
  # Permit parameters for strong parameters
  permit_params :name, :description, :address, :image

  remove_filter :image_attachments
  remove_filter :image_blobs
  
  # Remove the image field from search filters
  filter :name
  filter :description
  filter :address
  # Optionally, add any other filters that you want for searchable fields
  
  # Customize the form for creating/updating projects
  form do |f|
    f.inputs "Project Details" do
      f.input :name
      f.input :description
      f.input :address
      f.input :image, as: :file
    end
    f.actions
  end
end
