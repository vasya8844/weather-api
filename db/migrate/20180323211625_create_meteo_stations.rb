class CreateMeteoStations < ActiveRecord::Migration[5.0]
  def change
    create_table :meteo_stations do |t|
      t.string :name

      t.timestamps
    end

    add_reference :recordings, :meteo_station, foreign_key: true
  end
end
