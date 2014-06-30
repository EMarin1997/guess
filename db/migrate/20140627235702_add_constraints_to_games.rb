class AddConstraintsToGames < ActiveRecord::Migration
  def up
  	Game.where(guess_count: nil).update_all(guess_count: 0)
  	change_table :games do |t|
  		t.change :guess_count, :integer, null: false, default: 0
  		t.change :created_at, :datetime, null: false
  		t.change :updated_at, :datetime, null: false
  		t.change :answer, :integer, null: false
  	end
  end

  def down
  end
end
