class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|


      t.string :name
      t.string :email
      t.string :campus
      t.string :major
      t.string :interests
      t.string :experience
      t.integer :year
      t.string :internships 
      t.string :technical
      t.string :spoken_languages
      t.string :other
      t.string :connections

      
      t.timestamps


    end
  end
end
