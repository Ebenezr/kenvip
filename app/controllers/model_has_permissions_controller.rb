class ModelHasPermissionsController < ApplicationController
  before_action :set_model_has_permission, only: %i[ show update destroy ]

  # GET /model_has_permissions
  def index
    @model_has_permissions = ModelHasPermission.all

    render json: @model_has_permissions
  end

  # GET /model_has_permissions/1
  def show
    render json: @model_has_permission
  end

  # POST /model_has_permissions
  def create
    @model_has_permission = ModelHasPermission.new(model_has_permission_params)

    if @model_has_permission.save
      render json: @model_has_permission, status: :created, location: @model_has_permission
    else
      render json: @model_has_permission.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /model_has_permissions/1
  def update
    if @model_has_permission.update(model_has_permission_params)
      render json: @model_has_permission
    else
      render json: @model_has_permission.errors, status: :unprocessable_entity
    end
  end

  # DELETE /model_has_permissions/1
  def destroy
    @model_has_permission.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model_has_permission
      @model_has_permission = ModelHasPermission.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def model_has_permission_params
      params.require(:model_has_permission).permit(:permission_id, :model_type, :model_id)
    end
end
