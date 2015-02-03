class Link < ActiveRecord::Base

	def add_visit
		self.visits += 1
		self.save
	end
end
