class GamesController < ApplicationController

  def index
    render :template => 'games/root'
  end

  def draw
    @game = Game.find(session[:game_id])
    @game.draw_card
    redirect_to games_url, notice: "You have drawn a card."
  end

  def shuffle
    Game.find(session[:game_id]).shuffle
    redirect_to games_url, notice: "You have re-shuffled the deck."
  end

  def show
    Game.find(session[:game_id]).show
    redirect_to games_url, notice: "You have drawn all cards from the deck!"
  end

  def new
    @game = Game.new
    @game.shuffle
    session[:game_id] = @game.id
    redirect_to games_url, notice: "You have created a new game."
  end

  def update
    @game = Game.new
  end

end
