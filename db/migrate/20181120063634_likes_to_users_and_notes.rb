class LikesToUsersAndNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |l|
      l.integer :user_id, :integer
      l.integer :note_id, :integer
    end
  end
end
