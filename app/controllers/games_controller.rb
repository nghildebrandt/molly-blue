class GamesController < ApplicationController
  def index
    @games = Game.all

    binding.irb
  end

  def create
    @game = Game.create
    @game.join(@user)

    render action: show
  end

  def show
    @game = Game.find(params[:id])
    @game.join(@user)
  end
end
