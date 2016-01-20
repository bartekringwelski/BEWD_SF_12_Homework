class Tweet < ActiveRecord::Base

	validates :text, presence: true
	
	def self.search_for(query)
    Tweet.where('text LIKE :query', query: "%#{query}%")
  end
end
