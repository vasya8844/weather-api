class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :meteo_stations, include: :all
end
