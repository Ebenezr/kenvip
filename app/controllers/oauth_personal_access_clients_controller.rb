class OauthPersonalAccessClientsController < ApplicationController
  before_action :set_oauth_personal_access_client, only: %i[ show update destroy ]

  # GET /oauth_personal_access_clients
  def index
    @oauth_personal_access_clients = OauthPersonalAccessClient.all

    render json: @oauth_personal_access_clients
  end

  # GET /oauth_personal_access_clients/1
  def show
    render json: @oauth_personal_access_client
  end

  # POST /oauth_personal_access_clients
  def create
    @oauth_personal_access_client = OauthPersonalAccessClient.new(oauth_personal_access_client_params)

    if @oauth_personal_access_client.save
      render json: @oauth_personal_access_client, status: :created, location: @oauth_personal_access_client
    else
      render json: @oauth_personal_access_client.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /oauth_personal_access_clients/1
  def update
    if @oauth_personal_access_client.update(oauth_personal_access_client_params)
      render json: @oauth_personal_access_client
    else
      render json: @oauth_personal_access_client.errors, status: :unprocessable_entity
    end
  end

  # DELETE /oauth_personal_access_clients/1
  def destroy
    @oauth_personal_access_client.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oauth_personal_access_client
      @oauth_personal_access_client = OauthPersonalAccessClient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def oauth_personal_access_client_params
      params.require(:oauth_personal_access_client).permit(:client_id)
    end
end
