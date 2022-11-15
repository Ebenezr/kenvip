class DataElementGroupsController < ApplicationController
  before_action :set_data_element_group, only: %i[ show update destroy ]

  # GET /data_element_groups
  def index
    # paginate
    @data_element_groups = DataElementGroup.paginate(page: params[:page], per_page: 25)
    # @data_element_groups = DataElementGroup.all

    render json: @data_element_groups
  end

  # GET /data_element_groups/1
  def show
    render json: @data_element_group
  end

  # POST /data_element_groups
  def create
    @data_element_group = DataElementGroup.new(data_element_group_params)

    if @data_element_group.save
      render json: @data_element_group, status: :created, location: @data_element_group
    else
      render json: @data_element_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /data_element_groups/1
  def update
    if @data_element_group.update(data_element_group_params)
      render json: @data_element_group
    else
      render json: @data_element_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /data_element_groups/1
  def destroy
    @data_element_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_element_group
      @data_element_group = DataElementGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def data_element_group_params
      params.require(:data_element_group).permit(:name, :retrieve)
    end
end
