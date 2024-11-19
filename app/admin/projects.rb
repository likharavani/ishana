ActiveAdmin.register Project do
  # Permit parameters for strong parameters
  permit_params :name, :description, :address, images: []

  remove_filter :images_attachments
  remove_filter :images_blobs
  # Customize the form for creating/updating projects
  form do |f|
    f.inputs "Project Details" do
      f.input :name
      f.input :description
      f.input :address
      f.input :images, as: :file, input_html: { multiple: true }
    end
    f.actions
  end

  # Customize index display
  index do
    selectable_column
    id_column
    column :name
    column :description
    column :address
    column "Images" do |project|
      if project.images.attached?
        project.images.map { |img| image_tag url_for(img), size: "50x50" }.join(" ").html_safe
      else
        "No Images"
      end
    end
    actions
  end

  # Customize show page display
  show do
    attributes_table do
      row :name
      row :description
      row :address
      row "Images" do |project|
        if project.images.attached?
          project.images.map { |img| image_tag url_for(img) }.join(" ").html_safe
        else
          "No Images"
        end
      end
    end
  end
end
