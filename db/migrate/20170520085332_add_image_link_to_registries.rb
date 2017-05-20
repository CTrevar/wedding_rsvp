class AddImageLinkToRegistries < ActiveRecord::Migration[5.0]
  def change
    add_column :registries, :image_link, :string
  end
end
