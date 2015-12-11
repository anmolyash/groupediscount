class CreateProjects < ActiveRecord::Migration
  def change

    
    create_table :projects do |t|
      t.string :Project_name
      t.string :address
      t.string :latitude
      t.string :longitude
      t.string :size
      t.string :total_area
      t.string :launch_date
      t.string :possesion_date
      t.string :price
      t.string :price_per_sq_feet
      t.boolean :offer
      t.string :overview
      t.string :location

      

      t.timestamps null: false
    end

  end

   
end
