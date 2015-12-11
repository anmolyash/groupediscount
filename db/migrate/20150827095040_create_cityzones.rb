class CreateCityzones < ActiveRecord::Migration
  def change
    create_table :cityzones do |t|
      t.string :cityzone

      t.timestamps null: false
    end
  end
end
