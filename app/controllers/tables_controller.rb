class TablesController < ApplicationController

  def index
    @tables = Table.all
  end

  def show
    @table = Table.find_by(id: params[:id])
    @tables = Table.all
    @seats = Seat.where(table_id: @table.id)
    @round = Round.where(table_id: @table.id).last
    @players = Player.where(table_id: @table.id)
  end

  def new
    @table = Table.new
    @tables = Table.all
  end

  def create
    @max_seats = 8
    @table = Table.create(max_seats: @max_seats, open_seats: @max_seats, table_name: params[:table][:table_name])
    if @table.valid?
      $i = 0
      while $i < @max_seats  do
        @seat = Seat.create(table_id: @table.id, player_id: nil, position: $i, relative_position: $i)
        $i += 1
      end
      redirect_to tables_path(@table), notice: "Table Created Successfully"
    else
      puts "Failure!"
      #flash[:alert] = "Something went wrong."
      render "new", alert: "Something went wrong."
    end
  end

  def edit
    @table = Table.find_by(id: params[:id])
    @tables = Table.all
  end

  def update
    @table = Table.find_by(id: params[:id])
    table_params = params.require(:table).permit(:table_name)
    @table.update(table_params)
    redirect_to tables_path
  end

  def destroy
    @table = Table.find_by(id: params[:id])
    @table.destroy
    redirect_to tables_path
  end

end