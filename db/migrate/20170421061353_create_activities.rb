class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.integer :dress_code
      t.date :start_day
      t.time :start_hour

      t.timestamps
    end
  end
end
