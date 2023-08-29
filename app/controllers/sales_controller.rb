class SalesController < ApplicationController
  def new
    @sale = Sale.new
    @horse = Horse.find(params[:horse_id])
  end

  def create
    @sale = Sale.new(sale_params)
    @horse = Horse.find(params[:horse_id])
    @sale.horse = @horse
    @sale.user = current_user
    if @sale.save
      redirect_to horse_path(@horse)
    else
      render :new
    end
  end

  private

  def sale_params
    params.require(:sale).permit(:price, :date) # Hay que agregar horse y user como referencias pero no se como
  end
end
