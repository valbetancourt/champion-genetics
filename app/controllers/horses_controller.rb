class HorsesController < ApplicationController
  before_action :set_horse, only: [:show, :edit, :update, :destroy]

  def index
    @horses = Horse.all
  end

  def new
    @horse = Horse.new
  end

  def create
    @horse = Horse.new(horse_params)
    @horse.user = current_user
    @horse.save
    redirect_to horse_path(@horse)
  end

  def show
  end

  def edit
  end

  def update
    @horse.update(horse_params)
    redirect_to horse_path(@horse)
  end

  def destroy
    @horse.destroy
    redirect_to horses_path(@horse), status: :see_other
  end

  private

  def set_horse
    @horse = Horse.find(params[:id])
  end

  def horse_params
    params.require(:horse).permit(:category, :breed, :height, :pedigree, :accomplishments, :price, :name, :photo)
  end
end
