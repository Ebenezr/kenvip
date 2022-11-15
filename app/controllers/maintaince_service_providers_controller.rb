class MaintainceServiceProvidersController < ApplicationController
  before_action :set_maintaince_service_provider, only: %i[ show update destroy ]

  # GET /maintaince_service_providers
  def index
    @maintaince_service_providers = MaintainceServiceProvider.all

    render json: @maintaince_service_providers
  end

  # GET /maintaince_service_providers/1
  def show
    render json: @maintaince_service_provider
  end

  # POST /maintaince_service_providers
  def create
    @maintaince_service_provider = MaintainceServiceProvider.new(maintaince_service_provider_params)

    if @maintaince_service_provider.save
      render json: @maintaince_service_provider, status: :created, location: @maintaince_service_provider
    else
      render json: @maintaince_service_provider.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /maintaince_service_providers/1
  def update
    if @maintaince_service_provider.update(maintaince_service_provider_params)
      render json: @maintaince_service_provider
    else
      render json: @maintaince_service_provider.errors, status: :unprocessable_entity
    end
  end

  # DELETE /maintaince_service_providers/1
  def destroy
    @maintaince_service_provider.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maintaince_service_provider
      @maintaince_service_provider = MaintainceServiceProvider.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def maintaince_service_provider_params
      params.fetch(:maintaince_service_provider, {})
    end
end
