class CreateTemporaries < ActiveRecord::Migration
  def change
    create_table :temporaries do |t|

      t.timestamps null: false
    end
  end
end
