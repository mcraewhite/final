class GamesController < ApplicationController

  def index
    @games = Game.all
    @gametypes = GameType.all
    @rules = Rule.all
  end

  def show
    @game = Game.find_by(id: params[:id])
    @rules = Rule.all
  end

end