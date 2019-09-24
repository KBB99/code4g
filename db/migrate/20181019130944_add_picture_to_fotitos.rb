class AddPictureToFotitos < ActiveRecord::Migration[5.1]
  def change
    add_column :fotitos, :picture, :string
  end
end
