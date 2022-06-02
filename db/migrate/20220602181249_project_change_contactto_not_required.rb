class ProjectChangeContacttoNotRequired < ActiveRecord::Migration[6.1]
  def change
    change_column_null :projects, :contact_id, true
  end
end
