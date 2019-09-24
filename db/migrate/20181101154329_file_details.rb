class FileDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :project_files, :content_type, :string
  end
end
