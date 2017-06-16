class FlightsController < ApplicationController
  
  def index
  	@origin_options = Airport.all.map{ |a| [a.code, a.id]}
  	@destination_options = Airport.all.map{ |a| [a.code, a.id]}
  	if !params[:origin_search].nil? && !params[:destination_search].nil?
  		date_hash = params[:start_date_search]
  		start_date = Date.new(date_hash["date(1i)"].to_i, date_hash["date(2i)"].to_i, date_hash["date(3i)"].to_i)
  		end_date = start_date + 1.day
  		@flights = Flight.search(params[:origin_search], 
  								 params[:destination_search],
  								 start_date.to_datetime,
  								 end_date.to_datetime)
  	end
  end

end
