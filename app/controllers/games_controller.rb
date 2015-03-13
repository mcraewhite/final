class GamesController < ApplicationController
  skip_before_action :require_user, only: [:index, :show]

  def index
    @games = Game.all
    @gametypes = GameType.all
    @rules = Rule.all
  end

  def show
    @game = Game.find_by(id: params[:id])
    @rules = Rule.all
  end

  def new
    @game = Game.new
    @rules = Rule.all
  end

  def create
    game_params = params.require(:game).permit!
    @game = Game.create(game_params)
    if @game.valid?
      redirect_to games_path
    else
      render text: "FAIL"
    end
  end

  def edit
    @game = Game.find_by(id: params["id"])
  end

  def update
    game_params = params.require(:game).permit!
    @game = Game.find_by(id: params["id"])
    @game.update(game_params)
    if @game.valid?
      redirect_to games_path
    else
      render text: "FAIL"
    end
  end

  def destroy
    @game = Game.find_by(id: params["id"])
    @game.destroy
    redirect_to movies_path
  end

end