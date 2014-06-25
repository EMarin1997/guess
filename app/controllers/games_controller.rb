class GamesController < ApplicationController
	def index
		@games = Game.all
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

	def update
		@game = Game.find(params[:id])
		@game.update(game_params)
		redirect_to @game
	end

	def edit
		@game = Game.find(params[:id])
	end

	def destroy
		@game = Game.find(params[:id])
		@game.destroy

		redirect_to games_path
	end



	private
		def game_params
			params.require(:game).permit(:guess, :answer)
		end
end
