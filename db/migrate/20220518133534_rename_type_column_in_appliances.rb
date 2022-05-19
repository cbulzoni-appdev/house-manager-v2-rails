class RenameTypeColumnInAppliances < ActiveRecord::Migration[6.1]
  def change
    rename_column :appliances, :type, :appliance_type
  end
end
