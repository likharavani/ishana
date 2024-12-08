class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.text :address
      t.text :image_data

      t.timestamps
    end
  end
end
