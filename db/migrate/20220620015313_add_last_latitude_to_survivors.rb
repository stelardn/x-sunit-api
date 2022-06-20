class AddLastLatitudeToSurvivors < ActiveRecord::Migration[7.0]
  def change
    add_column :survivors, :last_latitude, :string
  end
end
