class SparePartTypeBalancesController < ApplicationController
  before_action :set_spare_part_type_balance, only: %i[ show update destroy ]

  # GET /spare_part_type_balances
  def index
    @spare_part_type_balances = SparePartTypeBalance.all

    render json: @spare_part_type_balances
  end

  # GET /spare_part_type_balances/1
  def show
    render json: @spare_part_type_balance
  end

  # POST /spare_part_type_balances
  def create
    @spare_part_type_balance = SparePartTypeBalance.new(spare_part_type_balance_params)

    if @spare_part_type_balance.save
      render json: @spare_part_type_balance, status: :created, location: @spare_part_type_balance
    else
      render json: @spare_part_type_balance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spare_part_type_balances/1
  def update
    if @spare_part_type_balance.update(spare_part_type_balance_params)
      render json: @spare_part_type_balance
    else
      render json: @spare_part_type_balance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spare_part_type_balances/1
  def destroy
    @spare_part_type_balance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spare_part_type_balance
      @spare_part_type_balance = SparePartTypeBalance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spare_part_type_balance_params
      params.require(:spare_part_type_balance).permit(:spare_part_type_id_id, :location_id, :balance, :date, :spare_part_transaction_id)
    end
end
