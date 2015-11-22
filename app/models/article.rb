class Article < ActiveRecord::Base
	validates :title, presence: true
	validates :body, presence: true
	belongs_to :user
	before_create :set_visits_count
	def update_visits_count
		self.update(visits_count: self.visits_count + 1)		
	end
	private
	def set_visits_count
		self.visits_count = 0

	end
	
		
	
end