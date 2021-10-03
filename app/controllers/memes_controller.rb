class MemesController < ApplicationController
  def create
    @game = Game.find(params[:game_id])
    @meme = Meme.new(meme_params)
    @meme.game = @game
    @meme.user = current_user
    if @meme.save 
      redirect_to game_path(@game, anchor: "meme-#{@meme.id}")
    else 
      render "games/show"
    end
  end

  private

  def meme_params
    params.require(:meme).permit(:title)
  end
end
