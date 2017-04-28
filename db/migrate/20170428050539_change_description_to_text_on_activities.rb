class ChangeDescriptionToTextOnActivities < ActiveRecord::Migration[5.0]
  def change
    change_column :activities, :description, :text
  end
end
