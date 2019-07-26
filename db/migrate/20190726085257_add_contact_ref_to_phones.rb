class AddContactRefToPhones < ActiveRecord::Migration[6.0]
  def change
    add_reference :phones, :contact, null: false, foreign_key: true
  end
end
