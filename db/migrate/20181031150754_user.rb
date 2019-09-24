class User < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :user, :integer
  end
end
