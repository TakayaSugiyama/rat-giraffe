class RentalsController < ApplicationController
  def new
    @rental = Rental.new(flash[:rental])
    2.times {@rental.stations.build}
  end

  def create
    @rental = Rental.new(rental_params)
    #binding.pry
    if @rental.save 
      redirect_to @rental
    else 
      redirect_to new_rental_path, flash: {error_messages: @rental.errors.full_messages, rental: @rental}
    end
  end

  def show
  end

  private 

  def rental_params 
    params.require(:rental).permit(:name,:price,:address,:years,:note,
      stations_attributes: [:id, :station_name,:route_name,:walk_times])
  end
end
