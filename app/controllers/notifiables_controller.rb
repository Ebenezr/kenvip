class NotifiablesController < ApplicationController
  before_action :set_notifiable, only: %i[ show update destroy ]

  # GET /notifiables
  def index
    @notifiables = Notifiable.all

    render json: @notifiables
  end

  # GET /notifiables/1
  def show
    render json: @notifiable
  end

  # POST /notifiables
  def create
    @notifiable = Notifiable.new(notifiable_params)

    if @notifiable.save
      render json: @notifiable, status: :created, location: @notifiable
    else
      render json: @notifiable.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /notifiables/1
  def update
    if @notifiable.update(notifiable_params)
      render json: @notifiable
    else
      render json: @notifiable.errors, status: :unprocessable_entity
    end
  end

  # DELETE /notifiables/1
  def destroy
    @notifiable.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notifiable
      @notifiable = Notifiable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def notifiable_params
      params.fetch(:notifiable, {})
    end
end
