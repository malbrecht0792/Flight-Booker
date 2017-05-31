class AddForeignKeysToFlights < ActiveRecord::Migration[5.0]
  def change
  	change_table :flights do |t|
	  t.references :origin, foreign_key: true
      t.references :destination, foreign_key: true
	end
  end
end
