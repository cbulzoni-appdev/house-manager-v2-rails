class HousesChangeContactNulltoTrue < ActiveRecord::Migration[6.1]
  def change
    change_column_null :appliances, :contact_id, true
  end
end
