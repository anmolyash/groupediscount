class AddCzIdToCity < ActiveRecord::Migration
  def change
    add_column :cities, :cz_id, :integer
  end
end
