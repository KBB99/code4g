class LikesForNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :likes, :integer
  end
end
