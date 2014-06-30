class GamesController < ApplicationController
	
	def index
		@games = Game.all
	end

	def new
		@game = Game.create


		redirect_to @game
	end
	
	def show
  		@game = Game.find(params[:id])
  		@guess = guess
  		
	end

	def update
		@game = Game.find(params[:id])
		@game.guess_count += 1
		@guess = guess
		@game.save
			
  		
		render 'games/show'
		
	end

	def destroy
		@game = Game.find(params[:id])
		@game.destroy

		redirect_to games_path
	end



	private
		def guess
			params[:guess] 
		end
end
