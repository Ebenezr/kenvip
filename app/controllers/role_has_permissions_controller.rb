class RoleHasPermissionsController < ApplicationController
  before_action :set_role_has_permission, only: %i[ show update destroy ]

  # GET /role_has_permissions
  def index
    @role_has_permissions = RoleHasPermission.all

    render json: @role_has_permissions
  end

  # GET /role_has_permissions/1
  def show
    render json: @role_has_permission
  end

  # POST /role_has_permissions
  def create
    @role_has_permission = RoleHasPermission.new(role_has_permission_params)

    if @role_has_permission.save
      render json: @role_has_permission, status: :created, location: @role_has_permission
    else
      render json: @role_has_permission.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /role_has_permissions/1
  def update
    if @role_has_permission.update(role_has_permission_params)
      render json: @role_has_permission
    else
      render json: @role_has_permission.errors, status: :unprocessable_entity
    end
  end

  # DELETE /role_has_permissions/1
  def destroy
    @role_has_permission.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role_has_permission
      @role_has_permission = RoleHasPermission.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def role_has_permission_params
      params.require(:role_has_permission).permit(:permission_id, :role_id)
    end
end
