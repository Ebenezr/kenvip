class OtherLocationsController < ApplicationController
  before_action :set_other_location, only: %i[ show update destroy ]

  # GET /other_locations
  def index
    @other_locations = OtherLocation.all

    render json: @other_locations
  end

  # GET /other_locations/1
  def show
    render json: @other_location
  end

  # POST /other_locations
  def create
    @other_location = OtherLocation.new(other_location_params)

    if @other_location.save
      render json: @other_location, status: :created, location: @other_location
    else
      render json: @other_location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /other_locations/1
  def update
    if @other_location.update(other_location_params)
      render json: @other_location
    else
      render json: @other_location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /other_locations/1
  def destroy
    @other_location.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_other_location
      @other_location = OtherLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def other_location_params
      params.fetch(:other_location, {})
    end
end
