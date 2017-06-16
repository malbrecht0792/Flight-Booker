
#Creating Airports
airport_codes_array = ["SFO","ATL","NYC"]
airport_codes_array.each do |airport_code|
	Airport.create!(code:  airport_code)
end

#Creating Flights
300.times do |n|
	origin = rand(airport_codes_array.size) + 1
	destination = rand(airport_codes_array.size) + 1
	start_datetime = Faker::Time.between((DateTime.now + 1.day), (DateTime.now + 14.days)).beginning_of_hour
	duration = rand(3..5).hours
	if origin != destination
		Flight.create!(origin_id:  origin, destination_id: destination,
					   start_datetime: start_datetime, duration: duration)
	end
end