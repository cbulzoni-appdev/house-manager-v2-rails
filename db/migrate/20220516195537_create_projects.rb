class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.text :description
      t.string :status
      t.date :date_started
      t.date :date_completed
      t.text :notes
      t.string :priority
      t.float :estimated_cost
      t.references :house, null: false, foreign_key: true, index: true
      t.references :contact, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
