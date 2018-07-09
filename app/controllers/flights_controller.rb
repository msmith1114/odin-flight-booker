class FlightsController < ApplicationController

  def index
    if params.has_key?(:q)
      @flights = Flight.where({ origin_id: params[:q][:origin], destination_id: params[:q][:destination]})
      @tickets = params[:q][:tickets]
      @date = params[:q][:date]
    else
      @flights = Flight.all
    end

  end


end
