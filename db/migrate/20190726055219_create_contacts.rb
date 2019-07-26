class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
