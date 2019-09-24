class Anonymity < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :anonymous, :boolean
  end
end
