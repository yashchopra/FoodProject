class BusinessesController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_action :set_business, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /businesses
  # GET /businesses.json

  def home
    @businesses = Business.all
    @businesses.each do |business|
      if business.user_id == current_user.id
        redirect_to business_path(business) and return
      end
    end
      redirect_to new_business_path and return
  end

  def index
    @businesses = Business.all
  end

  # GET /businesses/1
  # GET /businesses/1.json
  def show
    @businesses = Business.all
    # Railscast 228
    # @foods = Food.order(params[:sort])
    @foods = Food.order(sort_column + " " + sort_direction)
  end

  # GET /businesses/new
  def new
    @business = Business.new
  end

  # GET /businesses/1/edit
  def edit
  end

  # POST /businesses
  # POST /businesses.json
  def create
    @business = Business.new(business_params)
    @business.user_id = current_user.id


    respond_to do |format|
      if @business.save
        format.html { redirect_to @business, notice: 'Business was successfully created.' }
        format.json { render :show, status: :created, location: @business }
      else
        format.html { render :new }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /businesses/1
  # PATCH/PUT /businesses/1.json
  def update
    respond_to do |format|
      if @business.update(business_params)
        format.html { redirect_to @business, notice: 'Business was successfully updated.' }
        format.json { render :show, status: :ok, location: @business }
      else
        format.html { render :edit }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businesses/1
  # DELETE /businesses/1.json
  def destroy
    @business.destroy
    respond_to do |format|
      format.html { redirect_to businesses_url, notice: 'Business was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def sort_column
      Food.column_names.include?(params[:sort]) ? params[:sort] : "fooditem"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end


    # Use callbacks to share common setup or constraints between actions.
    def set_business
      @business = Business.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_params
      params.require(:business).permit(:orgType, :name, :business_type, :addLine1, :addLine2, :addCity, :addState, :addZip, :phone, :website, :email1, :email2, :user_id)
    end
end
