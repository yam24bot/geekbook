class AddOwnerIdName < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :owner_id, :integer
    add_column :books, :owner_nickname, :string
    add_column :users, :nickname, :string
  end
end
