class Flight < ApplicationRecord
	belongs_to :origin, class_name: "Airport"
	belongs_to :destination, class_name: "Airport"


	def self.search(origin_id, destination_id)
		where(origin_id: origin_id, destination_id: destination_id)
	end
end
