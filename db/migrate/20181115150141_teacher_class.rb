class TeacherClass < ActiveRecord::Migration[5.1]
  def change
    add_column :teachers, :subjects, :integer
  end
end
