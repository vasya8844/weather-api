class MeteoStation < ApplicationRecord
  belongs_to :location
  has_many :recordings
end
