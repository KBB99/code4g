class FilesDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :project_files, :url, :string
  end
end
