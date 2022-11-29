class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :reservation_status
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.references :spacecraft, null: false, foreign_key: true

      t.timestamps
    end
  end
end
