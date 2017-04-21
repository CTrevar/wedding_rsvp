class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :rsvp
      t.string :email
      t.integer :num_assistants
      t.date :arrival_date

      t.timestamps
    end
  end
end
