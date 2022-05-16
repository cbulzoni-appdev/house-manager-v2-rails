class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :company_name
      t.string :contact_name
      t.string :contact_type
      t.string :email
      t.string :phone
      t.references :owner, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
