class AddDraftToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :is_draft, :boolean, default: false
  end
end
