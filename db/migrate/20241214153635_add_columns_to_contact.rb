class AddColumnsToContact < ActiveRecord::Migration[7.1]
  def change
    add_column :contacts, :project_area, :string
    add_column :contacts, :budget, :string
  end
end
