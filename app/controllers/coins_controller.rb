class CoinsController < ApplicationController

  def index
      coins = Coin.all
      render json: coins
  end

  def create
    Coin.create(params)
  end

  def show
    Coin.find_by(name: params[:name])
  end

  def destroy
    Coin.find(params[:id]).destroy
  end

end
