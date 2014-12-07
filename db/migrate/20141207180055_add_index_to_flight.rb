class AddIndexToFlight < ActiveRecord::Migration
  def change
    add_index :flights, :start_airport_id
    add_index :flights, :finish_airport_id
  end
end
