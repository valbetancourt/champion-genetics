class HorsesController < ApplicationController
  def index
    @horses = Horse.all
  end

  def new
    @horse = Horse.new
  end

  def create
    horse = Horse.new(horse_params)
    horse.save
    redirect_to horse_path(horse)
  end

  def show
    @horse = Horse.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def horse_params
    params.require(:horse).permit(:category, :breed, :height, :pedigree, :accomplishments, :price)
  end
end
