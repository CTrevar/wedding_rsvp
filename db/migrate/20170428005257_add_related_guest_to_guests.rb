class AddRelatedGuestToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :related_guest_id, :integer
  end
end
