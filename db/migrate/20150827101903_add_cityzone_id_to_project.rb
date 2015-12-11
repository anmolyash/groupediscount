class AddCityzoneIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :cityzone_id, :integer
  end
end
