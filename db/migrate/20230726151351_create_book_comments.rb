class CreateBookComments < ActiveRecord::Migration[6.1]
  def change
    create_table :book_comments do |t|
      t.integer :user_id
      t.integer :BookImage_id

      t.timestamps
    end
  end
end