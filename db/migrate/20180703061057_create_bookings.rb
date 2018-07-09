class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :passenger_count
      t.integer :flight_id

      t.timestamps
    end
  end
end
