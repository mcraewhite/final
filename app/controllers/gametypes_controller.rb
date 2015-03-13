class GameTypesController < ApplicationController
  skip_before_action :require_user, only: [:index, :show]

  def index
    @gametypes = GameType.all
  end

  def show
    @gametype = GameType.find_by(id: params[:id])
    @rules = Rule.all
  end

end