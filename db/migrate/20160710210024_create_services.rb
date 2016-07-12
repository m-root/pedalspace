class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.references :mechanic
      t.string :service_name
      t.integer :service_price
      t.timestamps null: false
    end
  end
end
