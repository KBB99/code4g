class FileUser < ActiveRecord::Migration[5.1]
  def change
    add_column :project_files, :user_id, :string
  end
end
