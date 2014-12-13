class RemoveBookingIdFromPassenger < ActiveRecord::Migration
  def change
  	remove_column :passengers, :booking_id, :integer
  end
end
