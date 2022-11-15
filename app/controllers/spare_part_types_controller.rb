class SparePartTypesController < ApplicationController
  before_action :set_spare_part_type, only: %i[ show update destroy ]

  # GET /spare_part_types
  def index
    @spare_part_types = SparePartType.all

    render json: @spare_part_types
  end

  # GET /spare_part_types/1
  def show
    render json: @spare_part_type
  end

  # POST /spare_part_types
  def create
    @spare_part_type = SparePartType.new(spare_part_type_params)

    if @spare_part_type.save
      render json: @spare_part_type, status: :created, location: @spare_part_type
    else
      render json: @spare_part_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spare_part_types/1
  def update
    if @spare_part_type.update(spare_part_type_params)
      render json: @spare_part_type
    else
      render json: @spare_part_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spare_part_types/1
  def destroy
    @spare_part_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spare_part_type
      @spare_part_type = SparePartType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spare_part_type_params
      params.require(:spare_part_type).permit(:spare_part_category_id, :name, :description, :unit_of_measure, :manufacture_date, :warranty_information, :maintaince_service_provider_id, :deleted_at, :manufature_id, :supplier_id)
    end
end
