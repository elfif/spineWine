class VinsController < ApplicationController

  def index
    @vins = Vin.all
    render json: @vins
#    respond_to do |format|
#      format.html
#      format.json { render json: @vins }
#    end

  end

  def show
    @vin = Vin.find(params[:id])

    format.json { render json: @vin }
  end

  def create
    @vin = Vin.new(params[:vin])
    
    if @vin.save
      render json: @vin, status: :created, location: @vin
    else
      render json: @vin.errors, status: :unprocessable_entity 
    end
  

  end

  def destroy
    @vin = Vin.find(params[:id])
    @vin.destroy

    format.json { render json: nil, status: :ok }
  end
end
