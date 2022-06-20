class RemoveLastLocationFromSurvivors < ActiveRecord::Migration[7.0]
  def change
    remove_column :survivors, :last_location, :string
  end
end
