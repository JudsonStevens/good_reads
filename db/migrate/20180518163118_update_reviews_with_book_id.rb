class UpdateReviewsWithBookId < ActiveRecord::Migration[5.1]
  def change
    rename_column :reviews, :books_id, :book_id
  end
end
