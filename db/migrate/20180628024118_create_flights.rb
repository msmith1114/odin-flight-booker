class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :origin_id, foreign_key: true
      t.integer :destination_id, foreign_key: true
      t.datetime :departure
      t.integer :duration

      t.timestamps
    end
  end
end
