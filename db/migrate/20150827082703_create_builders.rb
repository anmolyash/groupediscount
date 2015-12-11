class CreateBuilders < ActiveRecord::Migration
  def change
    create_table :builders do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :company
      t.string :phone1
      t.string :phone2
      t.string :email1
      t.string :email2

      t.timestamps null: false
    end
  end
end
