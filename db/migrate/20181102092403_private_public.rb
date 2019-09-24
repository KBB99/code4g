class PrivatePublic < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :public, :boolean
  end
end
