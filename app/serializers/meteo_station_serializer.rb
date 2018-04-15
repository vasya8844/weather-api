class MeteoStationSerializer < ActiveModel::Serializer
  attributes :id, :name, :current

  has_many :recordings, include: :all

  def current
    object.recordings.select(:id, :temp, :status).last
  end
end
