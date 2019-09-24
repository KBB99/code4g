class MessageMicropostsUnion < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :micropost_id, :string
  end
end
