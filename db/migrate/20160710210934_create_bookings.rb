class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :cyclist
      t.references :mechanic
      t.text :description
      t.string :status
      t.timestamps null: false
    end
  end
end
