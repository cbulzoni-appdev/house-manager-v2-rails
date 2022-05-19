class CreateAppliances < ActiveRecord::Migration[6.1]
  def change
    create_table :appliances do |t|
      t.string :category
      t.string :type
      t.string :make
      t.string :model
      t.integer :year
      t.date :last_serviced
      t.date :service_due
      t.text :notes
      t.references :house, null: false, foreign_key: true, index: true
      t.references :contact, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
