class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.references :airport, index: true
      t.datetime :date
      t.integer :flight_duration

      t.timestamps
    end
  end
end
