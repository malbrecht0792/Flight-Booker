class RemoveColumnsFromFlights < ActiveRecord::Migration[5.0]
  def change
  	remove_column :flights, :origin, :integer
  	remove_column :flights, :destination, :integer
  end
end
