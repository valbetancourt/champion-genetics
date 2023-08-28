class SalesController < ApplicationController
  def new
    @sale = Sale.new
  end

  def create
    sale = Sale.new(sale_params)
    sale.save
    redirect_to sale_path(sale)
  end

  private

  def sale_params
    params.require(:sale).permit(:price, :date) # Hay que agregar horse y user como referencias pero no se como
  end
end
