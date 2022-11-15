class DataElementTblsController < ApplicationController
  before_action :set_data_element_tbl, only: %i[ show update destroy ]

  # GET /data_element_tbls
  def index
    @data_element_tbls = DataElementTbl.all

    render json: @data_element_tbls
  end

  # GET /data_element_tbls/1
  def show
    render json: @data_element_tbl
  end

  # POST /data_element_tbls
  def create
    @data_element_tbl = DataElementTbl.new(data_element_tbl_params)

    if @data_element_tbl.save
      render json: @data_element_tbl, status: :created, location: @data_element_tbl
    else
      render json: @data_element_tbl.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /data_element_tbls/1
  def update
    if @data_element_tbl.update(data_element_tbl_params)
      render json: @data_element_tbl
    else
      render json: @data_element_tbl.errors, status: :unprocessable_entity
    end
  end

  # DELETE /data_element_tbls/1
  def destroy
    @data_element_tbl.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_element_tbl
      @data_element_tbl = DataElementTbl.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def data_element_tbl_params
      params.fetch(:data_element_tbl, {})
    end
end
