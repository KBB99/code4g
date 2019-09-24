class CreateProjectFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :project_files do |t|
      t.string :name
      t.references :micropost, foreign_key: true

      t.timestamps
    end
    add_index :project_files, :created_at
  end
end
