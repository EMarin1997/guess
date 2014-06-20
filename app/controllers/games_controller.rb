class GamesController < ApplicationController
	def index
	end

	def new
	end

	def create
		@game = Game.new(game_params)
		@game.answer = rand(10)

		@game.save
		redirect_to @game
	end

	def show
  		@game = Game.find(params[:id])
	end

	private
		def game_params
			params.require(:game).permit(:guess, :answer)

		end
end
