class Pictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.integer :person
      t.integer :type
      t.integer :location

      t.timestamps
    end
  end
end
