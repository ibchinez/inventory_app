class SuppliesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_supply, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /supplies
  # GET /supplies.json
  def index
    if params[:search_item]
      @supplies = Supply.search_by_title(params[:search_item]).paginate(:page => params[:page]).per_page(10)
    else
      @supplies =  Supply.paginate(:page => params[:page]).per_page(10) 
    end
  end

  # GET /supplies/1
  # GET /supplies/1.json
  def show
  end

  # GET /supplies/new
  def new
    @supply = Supply.new
  end

  # GET /supplies/1/edit
  def edit

  end

  # POST /supplies
  # POST /supplies.json
  def create
    @supply = Supply.new(supply_params)

    respond_to do |format|
      if @supply.save
        format.html { redirect_to dashboards_index_path, notice: 'Goods was successfully created.' }
        format.json { render :show, status: :created, location: @supply }
      else
        format.html { render :new }
        format.json { render json: @supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supplies/1
  # PATCH/PUT /supplies/1.json
  def update
    respond_to do |format|
      if @supply.update(supply_params)
        format.html { redirect_to supplies_path, notice: 'Record was successfully updated.' }
        format.json { render :show, status: :ok, location: @supply }
      else
        format.html { render :edit }
        format.json { render json: @supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplies/1
  # DELETE /supplies/1.json
  def destroy
    @supply.destroy
    respond_to do |format|
      format.html { redirect_to supplies_path, notice: 'Record was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supply
      @supply = Supply.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supply_params
      params.require(:supply).permit(:customer_name, :quantity, :description, :price_per_unit,
       :batch_no, :manufacture_date, :expiry_date, :purchase_date, :pack_size, :remark, :user_id)
    end
  end
