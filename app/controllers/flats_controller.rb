class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end

  end

  def new
    @flat = Flat.new
  end

  def edit

  end

  def show
    @flat = Flat.find(params[:id])
  end

  def update

  end

  def destroy

  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end


end
