class TeacherDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :teachers, :domain, :string
    add_column :teachers, :position, :text
  end
end
