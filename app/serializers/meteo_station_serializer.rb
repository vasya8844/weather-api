class MeteoStationSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :location
  has_many :recordings
end
