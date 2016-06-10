class GamesController < ApplicationController


  def create
    @event = Event.new
    @event.title = params[:title]
    @event.held_on = Chronic.parse(params[:held_on])
    @event.save
  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new
    @game.datetime = params[:datetime]
    @game.location = params[:location]

    if @game.save
      redirect_to "/games", :notice => "Game created successfully."
    else
      render 'new'
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])

    @game.datetime = params[:datetime]
    @game.location = params[:location]

    if @game.save
      redirect_to "/games", :notice => "Game updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @game = Game.find(params[:id])

    @game.destroy

    redirect_to "/games", :notice => "Game deleted."
  end
end
