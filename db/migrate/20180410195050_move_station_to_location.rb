class MoveStationToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :meteo_stations, :location_id, :integer, null: false, default: 0
    
    change_column :recordings, :meteo_station_id, :integer, null: false, default: 0
    remove_column :recordings, :location_id
  end
end
