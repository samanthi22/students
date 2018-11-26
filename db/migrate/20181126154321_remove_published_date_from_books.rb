class RemovePublishedDateFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :published_date, :date
  end
end
