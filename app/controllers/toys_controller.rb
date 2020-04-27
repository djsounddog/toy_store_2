# frozen_string_literal: true

class ToysController < ApplicationController
  before_action :set_toy, only: %i[show edit update destroy]

  # GET /toys
  def index
    @toys = Toy.all
  end

  # GET /toys/1
  def show; end

  # GET /toys/new
  def new
    @toy = Toy.new
  end

  # GET /toys/1/edit
  def edit; end

  # POST /toys
  def create
    @toy = Toy.new(toy_params)
    if @toy.save
      redirect_to @toy
    else
      render :new
    end
  end

  # PATCH/PUT /toys/1
  def update
    @toy.assign_attributes(toy_params)

    if @toy.changed?
      if @toy.update(toy_params)
        redirect_to @toy
      else
        render :edit
      end
    else
      redirect_to @toy
    end
  end

  # DELETE /toys/1
  def destroy
    @toy.destroy
    redirect_to toys_url
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_toy
    @toy = Toy.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def toy_params
    params.require(:toy).permit(:name, :description, :date_posted, :posted_by,
                                :image, :manufacturer_id)
  end
end
