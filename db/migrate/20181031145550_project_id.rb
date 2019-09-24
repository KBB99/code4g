class ProjectId < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :micropost_id, :integer
  end
end
