class AppliancesController < ApplicationController
  before_action :set_appliance, only: %i[ show edit update destroy ]

  
                                
  # GET /appliances or /appliances.json
  def index
    @appliances = current_user.appliances
  end

  # GET /appliances/1 or /appliances/1.json
  def show
  end

  # GET /appliances/new
  def new
    @appliance = Appliance.new
    @possible_appliance_types = ["Air Conditioner","Water Heater","Sump Pump","Furnace","Range","Oven",
                                "Stove","Microwave","Dishwasher","Washing Machine","Dryer","Other"]
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /appliances/1/edit
  def edit
    @possible_appliance_types = ["Air Conditioner","Water Heater","Sump Pump","Furnace","Range","Oven",
                                "Stove","Microwave","Dishwasher","Washing Machine","Dryer","Other"]
    respond_to do |format|
      format.html
      format.js
    end
  end

  # POST /appliances or /appliances.json
  def create
    @appliance = Appliance.new(appliance_params)
    @appliance.house_id = current_user.houses.first.id
    @appliance.service_due = @appliance.last_serviced + 1.years

    respond_to do |format|
      if @appliance.save
        format.html { redirect_to appliance_url(@appliance), notice: "Appliance was successfully created." }
        format.json { render :show, status: :created, location: @appliance }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appliance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appliances/1 or /appliances/1.json
  def update
    respond_to do |format|
      if @appliance.update(appliance_params)
        format.html { redirect_to appliance_url(@appliance), notice: "Appliance was successfully updated." }
        format.json { render :show, status: :ok, location: @appliance }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appliance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appliances/1 or /appliances/1.json
  def destroy
    @appliance.destroy

    respond_to do |format|
      format.html { redirect_to appliances_url, notice: "Appliance was successfully destroyed." }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appliance
      @appliance = Appliance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appliance_params
      params.require(:appliance).permit(:category, :appliance_type, :make, :model, :year, :last_serviced, :service_due, :notes, :house_id, :contact_id)
    end
end
