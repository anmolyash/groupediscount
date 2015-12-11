class AddCatIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :cat_id, :integer
  end
end
