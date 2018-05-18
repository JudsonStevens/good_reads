class UpdateReviews < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :author
    add_reference :users, index: true, foreign_key: true
  end
end
