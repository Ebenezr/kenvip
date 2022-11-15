class SparePartOrdersController < ApplicationController
  before_action :set_spare_part_order, only: %i[ show update destroy ]

  # GET /spare_part_orders
  def index
    @spare_part_orders = SparePartOrder.all

    render json: @spare_part_orders
  end

  # GET /spare_part_orders/1
  def show
    render json: @spare_part_order
  end

  # POST /spare_part_orders
  def create
    @spare_part_order = SparePartOrder.new(spare_part_order_params)

    if @spare_part_order.save
      render json: @spare_part_order, status: :created, location: @spare_part_order
    else
      render json: @spare_part_order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spare_part_orders/1
  def update
    if @spare_part_order.update(spare_part_order_params)
      render json: @spare_part_order
    else
      render json: @spare_part_order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spare_part_orders/1
  def destroy
    @spare_part_order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spare_part_order
      @spare_part_order = SparePartOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spare_part_order_params
      params.fetch(:spare_part_order, {})
    end
end
