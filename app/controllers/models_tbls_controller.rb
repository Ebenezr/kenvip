class ModelsTblsController < ApplicationController
  before_action :set_models_tbl, only: %i[ show update destroy ]

  # GET /models_tbls
  def index
    @models_tbls = ModelsTbl.all

    render json: @models_tbls
  end

  # GET /models_tbls/1
  def show
    render json: @models_tbl
  end

  # POST /models_tbls
  def create
    @models_tbl = ModelsTbl.new(models_tbl_params)

    if @models_tbl.save
      render json: @models_tbl, status: :created, location: @models_tbl
    else
      render json: @models_tbl.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /models_tbls/1
  def update
    if @models_tbl.update(models_tbl_params)
      render json: @models_tbl
    else
      render json: @models_tbl.errors, status: :unprocessable_entity
    end
  end

  # DELETE /models_tbls/1
  def destroy
    @models_tbl.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_models_tbl
      @models_tbl = ModelsTbl.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def models_tbl_params
      params.fetch(:models_tbl, {})
    end
end
