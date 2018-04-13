class Api::V1::LocationsController < ApiController
  before_action :authenticate_user
  before_action :set_location

  def show
    render json: @location, include: 'meteo_stations.recordings', fields: { meteo_stations: [:name], recordings: [:temp, :status]}
  end

  private

    def set_location
      @location = Location.find(params[:id])
    end
end
