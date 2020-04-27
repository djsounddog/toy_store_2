# frozen_string_literal: true

class ManufacturersController < ApplicationController
  before_action :set_manufacturer, only: %i[show edit update destroy]

  # GET /manufacturers
  def index
    @manufacutrers = Manufacturer.all
  end

  # GET /manufacturers/1
  def show; end

  # GET /manufacturers/new
  def new
    @manufacturer = Manufacturer.new
  end

  # GET /manufacturers/1/edit
  def edit; end

  # POST /manufacturers
  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    if @manufacturer.save
      redirect_to @manufacturer
    else
      render :new
    end
  end

  # PATCH/PUT /manufacturers/1
  def update
    @manufacturer.assign_attributes(manufacturer_params)
    if p @manufacturer.changed?
      if @manufacturer.update(manufacturer_params)
        redirect_to @manufacturer
      else
        render :edit
      end
    else
      redirect_to @manufacturer
    end
  end

  # DELETE /manufacturers/1
  def destroy
    @manufacturer.destroy
    redirect_to manufacturers_url
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_manufacturer
    @manufacturer = Manufacturer.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def manufacturer_params
    params.require(:manufacturer).permit(:name, :location)
  end
end
