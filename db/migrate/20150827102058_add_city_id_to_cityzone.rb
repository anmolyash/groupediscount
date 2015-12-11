class AddCityIdToCityzone < ActiveRecord::Migration
  def change
    add_column :cityzones, :city_id, :integer
  end
end
