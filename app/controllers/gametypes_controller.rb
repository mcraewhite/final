class GameTypesController < ApplicationController

  def index
    @gametypes = GameType.all
  end

  def show
    @gametype = GameType.find_by(id: params[:id])
    @rules = Rule.all
  end

end