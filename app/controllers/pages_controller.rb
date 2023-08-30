class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @sales = Sale.all
    @users = User.all
    @horses = Horse.all
    @horses_sample = Horse.all.sample(3)
  end
end
