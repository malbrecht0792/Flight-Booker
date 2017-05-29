class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.integer :origin
      t.integer :destination
      t.datetime :start_datetime
      t.datetime :duration

      t.timestamps
    end
    add_index :flights, :origin
    add_index :flights, :destination
    add_index :flights, :start_datetime
    add_index :flights, :duration
  end
end
