class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    if params[:booking][:passengers_num].blank?
      @passenger_num = 1
    else
      @passenger_num = params[:booking][:passengers_num]
    end
      @passenger_num.to_i.times {@booking.passengers.build}
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end


  private

  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_count, passengers_attributes: [:name, :email])
  end


end
