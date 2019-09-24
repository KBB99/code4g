class KeyReferences < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :user, :string
  end
end
