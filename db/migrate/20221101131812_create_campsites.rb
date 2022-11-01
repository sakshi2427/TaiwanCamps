class CreateCampsites < ActiveRecord::Migration[7.0]
  def change
    create_table :campsites do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.text :description
      t.string :address, null: false
      t.string :county, null: false
      t.string :postal_code, null: false
      t.string :area, null: false
      t.string :website
      t.string :phone, null: false

      t.timestamps
    end
  end
end
