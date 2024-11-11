class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :name
      t.string :contact
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
