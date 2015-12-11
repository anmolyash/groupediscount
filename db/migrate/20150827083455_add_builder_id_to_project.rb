class AddBuilderIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :builder_id, :integer
  end
end
