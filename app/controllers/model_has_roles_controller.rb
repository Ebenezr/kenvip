class ModelHasRolesController < ApplicationController
  before_action :set_model_has_role, only: %i[ show update destroy ]

  # GET /model_has_roles
  def index
    @model_has_roles = ModelHasRole.all

    render json: @model_has_roles
  end

  # GET /model_has_roles/1
  def show
    render json: @model_has_role
  end

  # POST /model_has_roles
  def create
    @model_has_role = ModelHasRole.new(model_has_role_params)

    if @model_has_role.save
      render json: @model_has_role, status: :created, location: @model_has_role
    else
      render json: @model_has_role.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /model_has_roles/1
  def update
    if @model_has_role.update(model_has_role_params)
      render json: @model_has_role
    else
      render json: @model_has_role.errors, status: :unprocessable_entity
    end
  end

  # DELETE /model_has_roles/1
  def destroy
    @model_has_role.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model_has_role
      @model_has_role = ModelHasRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def model_has_role_params
      params.require(:model_has_role).permit(:role_id, :model_type, :model_id)
    end
end
