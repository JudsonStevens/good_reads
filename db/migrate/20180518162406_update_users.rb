class UpdateUsers < ActiveRecord::Migration[5.1]
  def change
    remove_reference :users, index: true, foreign_key: true

  end
end
