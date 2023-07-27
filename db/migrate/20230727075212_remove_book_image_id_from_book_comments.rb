class RemoveBookImageIdFromBookComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :book_comments, :BookImage_id, :integer
  end
end
