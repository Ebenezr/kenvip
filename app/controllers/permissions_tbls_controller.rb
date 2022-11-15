class PermissionsTblsController < ApplicationController
  before_action :set_permissions_tbl, only: %i[ show update destroy ]

  # GET /permissions_tbls
  def index
    @permissions_tbls = PermissionsTbl.all

    render json: @permissions_tbls
  end

  # GET /permissions_tbls/1
  def show
    render json: @permissions_tbl
  end

  # POST /permissions_tbls
  def create
    @permissions_tbl = PermissionsTbl.new(permissions_tbl_params)

    if @permissions_tbl.save
      render json: @permissions_tbl, status: :created, location: @permissions_tbl
    else
      render json: @permissions_tbl.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /permissions_tbls/1
  def update
    if @permissions_tbl.update(permissions_tbl_params)
      render json: @permissions_tbl
    else
      render json: @permissions_tbl.errors, status: :unprocessable_entity
    end
  end

  # DELETE /permissions_tbls/1
  def destroy
    @permissions_tbl.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permissions_tbl
      @permissions_tbl = PermissionsTbl.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def permissions_tbl_params
      params.fetch(:permissions_tbl, {})
    end
end
