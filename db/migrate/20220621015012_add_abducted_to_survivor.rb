class AddAbductedToSurvivor < ActiveRecord::Migration[7.0]
  def change
    add_column :survivors, :abducted, :boolean
  end
end
