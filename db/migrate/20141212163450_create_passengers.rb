class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :email
      t.references :booking, index: true

      t.timestamps
    end
  end
end
