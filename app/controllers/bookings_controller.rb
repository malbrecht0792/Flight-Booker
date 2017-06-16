class BookingsController < ApplicationController
  

  def new
  	@flight = Flight.find(params[:flight_id])
  	@booking = @flight.bookings.build
  	@passengers = Array.new(params[:num_of_passengers].to_i){@booking.passengers.build}
  end

  def create
  	flight = Flight.find(params[:flight_id])
  	booking = flight.bookings.build(flight_id: flight.id, email: booking_params)
  	
  	if booking.save
	  	booking_params[:passengers_attributes].values.each do |passenger|
	  		new_passenger = booking.passengers.build(name: passenger[:name])
	  		new_passenger.save
	  		BookingsPassenger.create(booking_id: booking.id, 
	  							      passenger_id: new_passenger.id)
	  	end
	  	redirect_to booking_path(booking.id)
	else
		render new
	end
  end

  def show
  	@booking = Booking.find(params[:id])
  	@flight = @booking.flight
  end

  def booking_params
  	params.require(:booking).permit(:email, :booking_object, passengers_attributes: [:name])
  end

end
