class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :booking
      t.text :content
      t.timestamps null: false
    end
  end
end
