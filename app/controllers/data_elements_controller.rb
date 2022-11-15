class DataElementsController < ApplicationController
  before_action :set_data_element, only: %i[ show update destroy ]

  # GET /data_elements
  def index
    @data_elements = DataElement.all

    render json: @data_elements
  end

  # GET /data_elements/1
  def show
    render json: @data_element
  end

  # POST /data_elements
  def create
    @data_element = DataElement.new(data_element_params)

    if @data_element.save
      render json: @data_element, status: :created, location: @data_element
    else
      render json: @data_element.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /data_elements/1
  def update
    if @data_element.update(data_element_params)
      render json: @data_element
    else
      render json: @data_element.errors, status: :unprocessable_entity
    end
  end

  # DELETE /data_elements/1
  def destroy
    @data_element.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_element
      @data_element = DataElement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def data_element_params
      params.require(:data_element).permit(:name, :value_type, :source, :is_immunising_data_element, :section)
    end
end
