class ModDefaultStatus < ActiveRecord::Migration[7.0]
  def change
    change_column :reservations, :reservation_status, :integer, default: 0
  end
end
