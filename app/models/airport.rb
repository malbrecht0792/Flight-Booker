class Airport < ApplicationRecord
	has_many :departing_flights, foreign_key: "origin",
								 class_name: "Flight",
								 dependent: :destroy
	has_many :arriving_flights, foreign_key: "destination",
								class_name: "Flight",
								dependent: :destroy
end
