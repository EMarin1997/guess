class AddGuessCountToGames < ActiveRecord::Migration
  def change
    add_column :games, :guess_count, :integer
  end
end
