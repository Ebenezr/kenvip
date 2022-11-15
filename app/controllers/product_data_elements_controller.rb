class ProductDataElementsController < ApplicationController
  before_action :set_product_data_element, only: %i[ show update destroy ]

  # GET /product_data_elements
  def index
    @product_data_elements = ProductDataElement.all

    render json: @product_data_elements
  end

  # GET /product_data_elements/1
  def show
    render json: @product_data_element
  end

  # POST /product_data_elements
  def create
    @product_data_element = ProductDataElement.new(product_data_element_params)

    if @product_data_element.save
      render json: @product_data_element, status: :created, location: @product_data_element
    else
      render json: @product_data_element.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /product_data_elements/1
  def update
    if @product_data_element.update(product_data_element_params)
      render json: @product_data_element
    else
      render json: @product_data_element.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product_data_elements/1
  def destroy
    @product_data_element.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_data_element
      @product_data_element = ProductDataElement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_data_element_params
      params.require(:product_data_element).permit(:product_id, :data_element_id, :dose_number, :key)
    end
end
