class TeachersSubjects < ActiveRecord::Migration[5.1]
  def change
      create_join_table :teachers, :subjects
  end
end
