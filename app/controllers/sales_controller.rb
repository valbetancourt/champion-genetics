class SalesController < ApplicationController
  def my_sales
      @sales = Sale.where(user: current_user).all
  end

  def create
    @horse = Horse.find(params[:horse_id])
    Sale.create(horse_id: @horse.id, user_id: current_user.id, price: @horse.price, date: Date.today)
    redirect_to my_sales_path
  end
end
