class FlightsController < ApplicationController
  
  def index
  	@origin_options = Airport.all.map{ |a| [a.code, a.id]}
  	@destination_options = Airport.all.map{ |a| [a.code, a.id]}
  	if !params[:origin_search].nil? && !params[:destination_search].nil?
  		@flights = Flight.search(params[:origin_search], 
  								 params[:destination_search])
  	end
  end

end
