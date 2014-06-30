class Game < ActiveRecord::Base
					  

	 before_create :random

	 def random
	 	self.answer = rand(1..10)	
	 end
	
end
