class RemoveColumnFromFlight < ActiveRecord::Migration
  def change
    remove_column :flights, :airport_id, :integer
  end
end
