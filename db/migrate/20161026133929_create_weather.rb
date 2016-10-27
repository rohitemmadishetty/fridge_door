class CreateWeather < ActiveRecord::Migration[5.0]
  def change
    create_table :weather do |t|
      t.decimal :temperature, precision: 5, scale: 2
      t.string :location
      t.string :description
      t.string :icon_url

      t.timestamps
    end
  end
end
