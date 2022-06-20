class AddLastLongitudeToSurvivors < ActiveRecord::Migration[7.0]
  def change
    add_column :survivors, :last_longitude, :string
  end
end
