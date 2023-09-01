class HorsesController < ApplicationController
  before_action :set_horse, only: [:show, :edit, :update, :destroy]

  def index
    @horses = Horse.all
    if params[:query].present?
      sql_subquery = <<~SQL
        horses.name @@ :query
        OR horses.category @@ :query
      SQL
      # @horses = @horses.where(sql_subquery, query: "%#{params[:query]}%")
      @horses = Horse.search_by_name_and_category(params[:query])
    end
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
    @horse = Horse.find(params[:id])
    @user = User.find_by(id: @horse.user_id)
    # The `geocoded` scope filters only flats with coordinates
    @markers =
      [{
        lat: @user.latitude,
        lng: @user.longitude,
        marker_html: render_to_string(partial: "marker")
      }]
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
