class GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
    @meme = Meme.new
  end
end
