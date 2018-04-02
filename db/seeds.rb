DATA_categories ={
 :category_keys =>
    ["name", "description"],
  :categories => [
    ["ruby"],["rails"], ["javascript"], ["scraping"] 
  ]
}

def make_categories
  DATA_categories[:categories].each do |category|
    new_category = Category.new
    category.each_with_index do |attribute, i|
      new_category.send(DATA_categories[:category_keys][i]+"=", attribute)
    end
    new_category.save
  end
end

DATA_tags ={
 :tag_keys =>
    ["name", "description"],
  :tags => [
    ["coding"],["testing"], ["career"], ["languages"] 
  ]
}

def make_tags
  DATA_tags[:tags].each do |tag|
    new_tag = Tag.new
    tag.each_with_index do |attribute, i|
      new_tag.send(DATA_tags[:tag_keys][i]+"=", attribute)
    end
    new_tag.save
  end
end

def main
	make_categories
	make_tags
	Bookmark.import_chrome_bookmarks
end

main