class Correct < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :users, :integer
  end
end
