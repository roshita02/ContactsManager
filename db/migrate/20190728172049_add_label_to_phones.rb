class AddLabelToPhones < ActiveRecord::Migration[6.0]
  def change
    add_column :phones, :label, :string
  end
end
