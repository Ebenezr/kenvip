class LocationProductsController < ApplicationController
  before_action :set_location_product, only: %i[ show update destroy ]

  # GET /location_products
  def index
    @location_products = LocationProduct.all

    render json: @location_products
  end

  # GET /location_products/1
  def show
    render json: @location_product
  end

  # POST /location_products
  def create
    @location_product = LocationProduct.new(location_product_params)

    if @location_product.save
      render json: @location_product, status: :created, location: @location_product
    else
      render json: @location_product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /location_products/1
  def update
    if @location_product.update(location_product_params)
      render json: @location_product
    else
      render json: @location_product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /location_products/1
  def destroy
    @location_product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location_product
      @location_product = LocationProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def location_product_params
      params.require(:location_product).permit(:location_id, :product_id, :active, :wastage_factor)
    end
end
