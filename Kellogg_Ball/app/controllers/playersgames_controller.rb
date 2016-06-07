class PlayersgamesController < ApplicationController
  def index
    @playersgames = Playersgame.all
  end

  def show
    @playersgame = Playersgame.find(params[:id])
  end

  def new
    @playersgame = Playersgame.new
  end

  def create
    @playersgame = Playersgame.new
    @playersgame.game_id = params[:game_id]
    @playersgame.player_id = params[:player_id]

    if @playersgame.save
      redirect_to "/playersgames", :notice => "Playersgame created successfully."
    else
      render 'new'
    end
  end

  def edit
    @playersgame = Playersgame.find(params[:id])
  end

  def update
    @playersgame = Playersgame.find(params[:id])

    @playersgame.game_id = params[:game_id]
    @playersgame.player_id = params[:player_id]

    if @playersgame.save
      redirect_to "/playersgames", :notice => "Playersgame updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @playersgame = Playersgame.find(params[:id])

    @playersgame.destroy

    redirect_to "/playersgames", :notice => "Playersgame deleted."
  end
end
