class TeacherNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :teacher_id, :integer
  end
end
