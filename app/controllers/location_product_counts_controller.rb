class LocationProductCountsController < ApplicationController
  before_action :set_location_product_count, only: %i[ show update destroy ]

  # GET /location_product_counts
  def index
    @location_product_counts = LocationProductCount.all

    render json: @location_product_counts
  end

  # GET /location_product_counts/1
  def show
    render json: @location_product_count
  end

  # POST /location_product_counts
  def create
    @location_product_count = LocationProductCount.new(location_product_count_params)

    if @location_product_count.save
      render json: @location_product_count, status: :created, location: @location_product_count
    else
      render json: @location_product_count.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /location_product_counts/1
  def update
    if @location_product_count.update(location_product_count_params)
      render json: @location_product_count
    else
      render json: @location_product_count.errors, status: :unprocessable_entity
    end
  end

  # DELETE /location_product_counts/1
  def destroy
    @location_product_count.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location_product_count
      @location_product_count = LocationProductCount.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def location_product_count_params
      params.require(:location_product_count).permit(:location_id, :product_id, :counted)
    end
end
