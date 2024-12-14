class CreateProjectImages < ActiveRecord::Migration[7.1]
  def change
    create_table :project_images do |t|
      t.text :image_data
      t.integer :image_type
      t.references :project, null: true, foreign_key: true

      t.timestamps
    end
  end
end
