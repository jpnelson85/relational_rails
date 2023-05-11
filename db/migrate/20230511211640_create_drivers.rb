class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers do |t|
      t.string :driver_name
      t.boolean :won_indy
      t.integer :championships
      t.references :race, null: false, foreign_key: true

      t.timestamps
    end
  end
end
