class WinesController < ApplicationController
  def new
    @wine = Wine.new
  end

  def wine_params
    params.require(:wine).permit(:name, :country, :color_id, :taste_id, :label)
  end

  def create
    @wine = Wine.new(wine_params)

    @wine.save!
    if  @wine.save
      redirect_to new_purchase_path(wine_id: @wine)
    else
      render :new
    end
  end

  def edit
  end

  def index
  end

  def show
  end
end
