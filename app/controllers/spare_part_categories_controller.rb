class SparePartCategoriesController < ApplicationController
  before_action :set_spare_part_category, only: %i[ show update destroy ]

  # GET /spare_part_categories
  def index
    @spare_part_categories = SparePartCategory.all

    render json: @spare_part_categories
  end

  # GET /spare_part_categories/1
  def show
    render json: @spare_part_category
  end

  # POST /spare_part_categories
  def create
    @spare_part_category = SparePartCategory.new(spare_part_category_params)

    if @spare_part_category.save
      render json: @spare_part_category, status: :created, location: @spare_part_category
    else
      render json: @spare_part_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spare_part_categories/1
  def update
    if @spare_part_category.update(spare_part_category_params)
      render json: @spare_part_category
    else
      render json: @spare_part_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spare_part_categories/1
  def destroy
    @spare_part_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spare_part_category
      @spare_part_category = SparePartCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spare_part_category_params
      params.fetch(:spare_part_category, {})
    end
end
