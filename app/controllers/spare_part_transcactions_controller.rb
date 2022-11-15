class SparePartTranscactionsController < ApplicationController
  before_action :set_spare_part_transcaction, only: %i[ show update destroy ]

  # GET /spare_part_transcactions
  def index
    @spare_part_transcactions = SparePartTranscaction.all

    render json: @spare_part_transcactions
  end

  # GET /spare_part_transcactions/1
  def show
    render json: @spare_part_transcaction
  end

  # POST /spare_part_transcactions
  def create
    @spare_part_transcaction = SparePartTranscaction.new(spare_part_transcaction_params)

    if @spare_part_transcaction.save
      render json: @spare_part_transcaction, status: :created, location: @spare_part_transcaction
    else
      render json: @spare_part_transcaction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spare_part_transcactions/1
  def update
    if @spare_part_transcaction.update(spare_part_transcaction_params)
      render json: @spare_part_transcaction
    else
      render json: @spare_part_transcaction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spare_part_transcactions/1
  def destroy
    @spare_part_transcaction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spare_part_transcaction
      @spare_part_transcaction = SparePartTranscaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spare_part_transcaction_params
      params.require(:spare_part_transcaction).permit(:transaction_type_id, :transaction_reason_id, :location_id, :spare_part_order_id, :data, :other_location_id, :user_id, :status, :deleted-at, :quantity, :spare_part_type_id)
    end
end
