class RemoveGuessFromGames < ActiveRecord::Migration
  def change
  	remove_column :games, :guess
  end
end
