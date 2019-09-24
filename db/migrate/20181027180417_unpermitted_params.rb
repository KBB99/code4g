class UnpermittedParams < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :authenticity_token, :string
    add_column :users, :user, :string
    add_column :users, :commit, :string
    add_column :users, :utf8, :string
  end
end
