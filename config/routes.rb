Rails.application.routes.draw do
  resources :tags, :categories, :bookmarks
	root '/', to: 'bookmarks#index'
end
