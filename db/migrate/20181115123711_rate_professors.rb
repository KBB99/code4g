class RateProfessors < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|


      t.string :name
      t.string :email
      t.string :campus
      t.timestamps
    end
  end
end
