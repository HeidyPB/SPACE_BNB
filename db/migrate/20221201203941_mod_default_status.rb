class ModDefaultStatus < ActiveRecord::Migration[7.0]
  def change
    change_column :reservations, default: :pending
  end
end
