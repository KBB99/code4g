class Subject < ActiveRecord::Migration[5.1]
  def change
      create_table :subjects do |t|
        t.string :name
        t.references :teachers
      end
  end
end
