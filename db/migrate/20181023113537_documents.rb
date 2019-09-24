class Documents < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :document, :string
  end
end
