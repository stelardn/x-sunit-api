class CreateSurvivors < ActiveRecord::Migration[7.0]
  def change
    create_table :survivors do |t|
      t.string :name, null: false
      t.integer :age
      t.string :gender
      t.string :last_location

      t.timestamps
    end
  end
end
