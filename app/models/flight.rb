class Flight < ApplicationRecord
	belongs_to :origin, class_name: "Airport"
	belongs_to :destination, class_name: "Airport"
	has_many :bookings, foreign_key: "flight_id"
	has_many :bookings_passenger, through: :bookings
	has_many :passengers, through: :bookings_passenger


	def self.search(origin_id, destination_id, start_datetime, end_datetime)
		where(origin_id: origin_id, 
			  destination_id: destination_id, 
			  start_datetime: start_datetime..end_datetime)
	end
end
