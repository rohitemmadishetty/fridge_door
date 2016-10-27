class AddLocationIndexToWeather < ActiveRecord::Migration[5.0]
  def change
    add_index :weather, :location
  end
end
