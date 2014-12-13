class CreatePassengerBookings < ActiveRecord::Migration
  def change
    create_table :passenger_bookings do |t|
      t.references :booking, index: true
      t.references :passenger, index: true

      t.timestamps
    end
  end
end
