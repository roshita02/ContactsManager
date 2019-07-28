class AddLabelToEmails < ActiveRecord::Migration[6.0]
  def change
    add_column :emails, :label, :string
  end
end
