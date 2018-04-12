class RecordingSerializer < ActiveModel::Serializer
  attributes :id, :temp, :status

  belongs_to :meteo_station
end
