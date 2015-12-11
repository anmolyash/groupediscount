class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :venueid
      t.string :venueName
      t.string :venueAddress
      t.string :venueCity
      t.string :venueState
      t.integer :venueZip
      t.string :venuePhone
      t.integer :venueAge

      t.timestamps null: false
    end
  end
end
