class TransactioReasonsController < ApplicationController
  before_action :set_transactio_reason, only: %i[ show update destroy ]

  # GET /transactio_reasons
  def index
    @transactio_reasons = TransactioReason.all

    render json: @transactio_reasons
  end

  # GET /transactio_reasons/1
  def show
    render json: @transactio_reason
  end

  # POST /transactio_reasons
  def create
    @transactio_reason = TransactioReason.new(transactio_reason_params)

    if @transactio_reason.save
      render json: @transactio_reason, status: :created, location: @transactio_reason
    else
      render json: @transactio_reason.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /transactio_reasons/1
  def update
    if @transactio_reason.update(transactio_reason_params)
      render json: @transactio_reason
    else
      render json: @transactio_reason.errors, status: :unprocessable_entity
    end
  end

  # DELETE /transactio_reasons/1
  def destroy
    @transactio_reason.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transactio_reason
      @transactio_reason = TransactioReason.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transactio_reason_params
      params.require(:transactio_reason).permit(:name)
    end
end
