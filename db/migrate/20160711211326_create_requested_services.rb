class CreateRequestedServices < ActiveRecord::Migration[5.0]
  def change
    create_table :requested_services do |t|
      t.references :booking
      t.references :service
      t.timestamps null: false
    end
  end
end
