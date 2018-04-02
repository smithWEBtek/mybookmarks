class Category < ApplicationRecord
	has_many :bookmarks
	has_many :tags

	NONTEK = [
			"gigs",
			"interview-coding",
			"interview-prep",
			"junior",
			"networking",
			"portfolio",
			"machild",
			"uncle bob martin",
			"rails-react-heroku",
			"tek",
			"_ntwk", "_accts", 
			"trilogy", "misc", "port", "_//", "//", "_career", "_hku", 
			"_job", "_learn-videos", "Aida", "bands", "cirque", 
			"flatiron", "glasses", "listen", "mainstage", "Network", "recruiter", 
			"technical-coach", "wework", "try","cernan-react", "jquery",
			"videos", "_mentors", "Listen", "study-group"
		]
 
	
	def self.tek_only
		# non_tek = [
		# 	"gigs",
		# 	"interview-coding",
		# 	"interview-prep",
		# 	"junior",
		# 	"networking",
		# 	"portfolio",
		# 	"machild",
		# 	"uncle bob martin",
		# 	"rails-react-heroku",
		# 	"tek",
		# 	"_ntwk", "_accts", 
		# 	"trilogy", "misc", "port", "_//", "//", "_career", "_hku", 
		# 	"_job", "_learn-videos", "Aida", "bands", "cirque", 
		# 	"flatiron", "glasses", "listen", "mainstage", "Network", "recruiter", 
		# 	"technical-coach", "wework", "try","cernan-react", "jquery",
		# 	"videos", "_mentors", "Listen", "study-group"
		# ]
	
	tek_categories = []
	categories = Category.order(:name) 
	categories.each do |c|
		if !NONTEK.include?(c.name)
			tek_categories.push(c)
		end
	end
		# tek_categories.sort {|c| c.name.downcase<=>c.name.downcase}
		tek_categories
	end
end
