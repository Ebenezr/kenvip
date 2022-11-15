class OathAccessTokensController < ApplicationController
  before_action :set_oath_access_token, only: %i[ show update destroy ]

  # GET /oath_access_tokens
  def index
    @oath_access_tokens = OathAccessToken.all

    render json: @oath_access_tokens
  end

  # GET /oath_access_tokens/1
  def show
    render json: @oath_access_token
  end

  # POST /oath_access_tokens
  def create
    @oath_access_token = OathAccessToken.new(oath_access_token_params)

    if @oath_access_token.save
      render json: @oath_access_token, status: :created, location: @oath_access_token
    else
      render json: @oath_access_token.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /oath_access_tokens/1
  def update
    if @oath_access_token.update(oath_access_token_params)
      render json: @oath_access_token
    else
      render json: @oath_access_token.errors, status: :unprocessable_entity
    end
  end

  # DELETE /oath_access_tokens/1
  def destroy
    @oath_access_token.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oath_access_token
      @oath_access_token = OathAccessToken.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def oath_access_token_params
      params.require(:oath_access_token).permit(:user_id, :client_id, :name, :scope, :revoked, :expires_at)
    end
end
