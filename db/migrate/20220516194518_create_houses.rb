class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.date :purchase_date
      t.references :owner, null: false, foreign_key: { to_table: :users }, index: true

      t.timestamps
    end
  end
end
