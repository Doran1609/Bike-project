class MycartsController < ApplicationController
 before_action :set_mycarts, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_customer!
  before_filter :ensure_admin, :only => [:edit, :destroy]
  # GET /Mycarts
  # GET /orders.json
  def index
    @mycarts = Mycart.all
  end

  
  # GET /Mycart/1
  # GET /Mycart/1.json
  def show
  end

  # GET /orders/new
  def new
    @mycarts = Mycart.new
    #@mycarts = Mycart.new(:myproducttype => params[:myproducttype])
  end

  # GET /orders/1/edit
  def edit
    @mycarts = Mycart.find(params[:id])
          
  end
  #it s not saving from here
  def add
          id = params[:id]
              @mycart = Mycart.new
              @mycart.user_id = current_user.id
              @mycart.product_id = id
              
              @mycart.save
               redirect_to controller: 'Mycart', action: 'edit', id: current_customer.id, something: 'else'
         
         
  end

  # POST /orders
  # POST /orders.json
  def create
    @mycart = Mycart.new(mycart_params)

    respond_to do |format|
      if @mycart.save
        format.html { redirect_to @mycart, notice: 'order was successfully created.' }
        format.json { render :show, status: :created, location: @mycarts }
      else
        format.html { render :new }
        format.json { render json: @mycart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @mycart.update(mycart_params)
        format.html { redirect_to @mycart, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @mycart }
      else
        format.html { render :edit }
        format.json { render json: @Mycart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @mycart.destroy
    respond_to do |format|
      format.html { redirect_to mycarts_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    #Use callbacks to share common setup or constraints between actions.
   def set_Mycart
     @mycarts = Mycart.find(params[:id])
   end
  

    # Never trust parameters from the scary internet, only allow the white list through.
    def mycart_params
      params.require(:mycart).permit(:email, :bike, :num, :start_date, :days, :contactNum, :customer_id, :product_id)
    end
end
