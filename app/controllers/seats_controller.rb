class SeatsController < ApplicationController

  def index
    @seats = Seat.all
  end

  def show
    @seat = Seat.find_by(id: params[:id])
    @seats = Seat.all
  end

  def new
    @table = Table.find_by(id: params["id"])
    @seat = Seat.new
    @seats = Seat.all
  end

  def create
    seat_params = params.require(:seat).permit!
    seat.create(seat_params)
    redirect_to seats_path
  end

  def edit
    @seat = Seat.find_by(id: params[:id])
    @seats = Seat.all
  end

  def update
    @seat = Seat.find_by(id: params[:id])
    seat_params = params.require(:seat).permit!
    @seat.update(seat_params)
    redirect_to seats_path
  end

  def destroy
    @seat = Seat.find_by(id: params[:id])
    @seat.destroy
    redirect_to seats_path
  end

end