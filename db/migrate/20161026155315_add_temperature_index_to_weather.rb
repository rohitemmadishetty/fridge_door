class AddTemperatureIndexToWeather < ActiveRecord::Migration[5.0]
  def change
    add_index :weather, :temperature
  end
end
