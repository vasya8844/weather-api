class MeteoStationSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :recordings
end
