class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /foods
  # GET /foods.json
  def index
    @business = Business.find params[:business_id]
    @foods = Food.all
  end

  # GET /foods/1
  # GET /foods/1.json
  def show
    # @food = Food.find params[:id]
    @business = Business.find params[:business_id]
  end

  # GET /foods/new
  def new
    @food = Food.new
    @business = Business.find params[:business_id]
    @food.business = @business
  end

  # GET /foods/1/edit
  def edit
    # @food = Food.find params[:id]
    @business = Business.find params[:business_id]
  end

  # POST /foods
  # POST /foods.json
  def create
    @food = Food.new(food_params)
    @business = Business.find params[:business_id]
    puts "Business Object"
    puts @business.inspect
    @food.business = @business

    respond_to do |format|
      if @food.save
        format.html { redirect_to [@business], notice: 'Food was successfully created.' }
        format.json { render :show, status: :created, location: @food }
      else
        format.html { render :new }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foods/1
  # PATCH/PUT /foods/1.json
  def update
    # @food = Food.find params[:id]
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to [@business], notice: 'Food was successfully updated.' }
        format.json { render :show, status: :ok, location: @food }
      else
        format.html { render :edit }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foods/1
  # DELETE /foods/1.json
  def destroy
    # @food = Food.find params[:id]
    @business = Business.find params[:business_id]
    @food.destroy
    respond_to do |format|
      format.html { redirect_to business_path(@business), notice: 'Food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @business = Business.find params[:business_id]
      @food = Food.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_params
      params.require(:food).permit(:fooditem, :id, :user_id, :foodtype, :expiration, :pickupstart, :pickupend, :specialnote)
    end
end
