class Bookmark < ApplicationRecord
	belongs_to :category
	has_many :tags

	def self.import_chrome_bookmarks
		file = File.read(Rails.root.join('lib', 'assets', 'chrome_bookmarks.json'))
		data = JSON.parse(file)
		data.each do |bm|
			if bm["url"]
				new_bm	= Bookmark.new
				new_bm.cbm_id = bm["id"]
				new_bm.cbm_index = bm["index"]
				new_bm.parent_id = bm["parentId"]
				new_bm.title = bm["title"]
				new_bm.url = bm["url"]
				new_bm.save
			else 
				newCategory = Category.new(name: bm["title"], cbm_id: bm["id"])
				newCategory.save
			end
		end
		Bookmark.all.each{|bm|bm.set_bookmark_category}
	end
	
	def set_bookmark_category
		if Category.find_by_cbm_id(self.parent_id)
			category = Category.find_by_cbm_id(self.parent_id)
			self.category_id = category.id
			self.save
		end
	end
	
end
