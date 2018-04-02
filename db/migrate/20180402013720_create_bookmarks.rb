class CreateBookmarks < ActiveRecord::Migration[5.0]
	def change
		create_table :bookmarks do |t|
		t.integer   :category_id, default: 1
		t.integer 	:cbm_id 
		t.integer 	:cbm_index
		t.integer 	:parent_id 
		t.text 			:name
		t.text 			:url
		end
	end
end
