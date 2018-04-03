class CreateTagBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :tag_bookmarks do |t|
			t.integer :bookmark_id
			t.integer :tag_id
      t.timestamps
    end
  end
end
