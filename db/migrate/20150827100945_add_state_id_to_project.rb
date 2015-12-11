class AddStateIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :state_id, :integer
  end
end
