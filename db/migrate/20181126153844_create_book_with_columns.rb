class CreateBookWithColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :book_with_columns do |t|
      t.string :title
      t.string :author
      t.integer :isbn
      t.float :price
      t.date :published_date
    end
  end
end
