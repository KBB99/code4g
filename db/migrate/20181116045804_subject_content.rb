class SubjectContent < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :subject_id, :integer
    add_column :project_files, :subject_id, :integer
    add_column :users, :subject_id, :integer
    add_column :messages, :subject_id, :integer
  end
end
