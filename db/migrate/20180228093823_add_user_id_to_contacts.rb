class AddUserIdToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :user_id, :string
  end
end
