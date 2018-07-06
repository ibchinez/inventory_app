class DeliveriesController < ApplicationController
  before_action :set_delivery, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  load_and_authorize_resource
  
  # GET /deliveries
  # GET /deliveries.json
  def index
    if params[:search_item]
      @deliveries = Delivery.search_by_title(params[:search_item]).paginate(:page => params[:page]).per_page(10)
    else
      @deliveries =  Delivery.paginate(:page => params[:page]).per_page(10) 
    end
  end

  # GET /deliveries/1
  # GET /deliveries/1.json
  def show
    
  end

  # GET /deliveries/new
  def new
    @delivery = Delivery.new
  end

  # GET /deliveries/1/edit
  def edit
  end

  # POST /deliveries
  # POST /deliveries.json
  def create
    @delivery = current_user.deliveries.new(delivery_params)

    respond_to do |format|
      if @delivery.save
        format.html { redirect_to dashboards_index_path, notice: 'Delivery was successfully created.' }
        format.json { render :show, status: :created, location: @delivery }
      else
        format.html { render 'dashboards/index', notice: 'Error creating delivery,please try again ' }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deliveries/1
  # PATCH/PUT /deliveries/1.json
  def update
    respond_to do |format|
      if @delivery.update(delivery_params)
        format.html { redirect_to dashboards_index_path, notice: 'Delivery was successfully updated.' }
        format.json { render :show, status: :ok, location: @delivery }
      else
        format.html { render 'dashboards/index' , notice: 'Error creating delivery,please try again'}
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deliveries/1
  # DELETE /deliveries/1.json
  def destroy
    @delivery.destroy
    respond_to do |format|
      format.html { redirect_to dashboards_index_path, notice: 'Delivery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery
      @delivery = Delivery.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delivery_params
      params.require(:delivery).permit(:name, :quantity, :weight, :user_id)
    end
  end