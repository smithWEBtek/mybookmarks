class Tag < ApplicationRecord
	has_many :categories
	
	has_many :tag_bookmarks
	has_many :bookmarks, through: :tag_bookmarks 
end
