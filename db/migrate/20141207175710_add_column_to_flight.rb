class AddColumnToFlight < ActiveRecord::Migration
  def change
    add_column :flights, :start_airport_id, :integer
    add_column :flights, :finish_airport_id, :integer
  end
end
