class AddBrandLogoToRegistries < ActiveRecord::Migration[5.0]
  def change
    add_attachment :registries, :brand_logo
  end
end
