class AddCodeToRegistries < ActiveRecord::Migration[5.0]
  def change
    add_column :registries, :code, :string
  end
end
