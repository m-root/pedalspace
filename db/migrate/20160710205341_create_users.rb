class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :type
      t.string :first_name
      t.string :last_name
      t.string :photo
      t.string :email
      t.string :password_digest
      t.text :bio
      t.integer :avg_rating
      t.string :street_address
      t.string :city
      t.string :postal_code
      t.timestamps null: false
    end
  end
end
