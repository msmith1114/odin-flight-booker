class Flight < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :passengers, through: :bookings
  belongs_to :from_airport, class_name: 'Airport', foreign_key: 'origin_id'
  belongs_to :to_airport, class_name: 'Airport', foreign_key: 'destination_id'


  def self.flight_dates
    flight_dates = Flight.where.not(departure: nil).select(:departure)
  end

  def departure_format
    self.departure.strftime("%m/%d/%Y")
  end

end
