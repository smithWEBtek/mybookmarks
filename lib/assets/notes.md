## MyBookmarks App

bookmark

```ruby
class Bookmark < ActiveRecord::Base
	has_many :tags
	has_many :categories, through: :tags
end
rails g resource create_bookmark name:text description:text url:text

rails g controller bookmarks index show new create edit update destroy bookmark_params


class Category < ActiveRecord::Base
	has_many :tags
	has_many :bookmarks, through: :tags
end
rails g resource create_categories name:text


class Tag < ActiveRecord::Base
	has_many :bookmarks
	has_many :categories
end
rails g resource create_tags name:text


class Scraper 

```
