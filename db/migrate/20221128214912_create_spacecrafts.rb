class CreateSpacecrafts < ActiveRecord::Migration[7.0]
  def change
    create_table :spacecrafts do |t|
      t.string :name
      t.decimal :velocity
      t.integer :passenger_capacity
      t.decimal :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
