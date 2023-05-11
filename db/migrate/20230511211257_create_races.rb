class CreateRaces < ActiveRecord::Migration[7.0]
  def change
    create_table :races do |t|
      t.string :race_name
      t.integer :laps
      t.boolean :single_largest_sporting_event_in_world

      t.timestamps
    end
  end
end
