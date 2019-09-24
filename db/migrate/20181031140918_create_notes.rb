class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.text :content
      t.references :microposts, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
    add_index :notes, :created_at
  end
end
