class Booking < ApplicationRecord
	belongs_to :flight
	has_many :bookings_passenger, foreign_key: "booking_id"
	has_many :passengers, through: :bookings_passenger,
						  source: :passenger
	accepts_nested_attributes_for :passengers
end
