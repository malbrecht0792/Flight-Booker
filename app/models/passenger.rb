class Passenger < ApplicationRecord
	has_many :bookings_passenger, foreign_key: "passenger_id"
	has_many :bookings, through: :bookings_passenger,
						source: :booking
	has_many :flights, through: :bookings,
					   source: :flight
end
