class ChangeDressCodeToStringOnActivities < ActiveRecord::Migration[5.0]
  def change
    change_column :activities, :dress_code, :string
  end
end
