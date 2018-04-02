Rails.application.routes.draw do
  resources :tags
  resources :categories
  resources :bookmarks
  get 'bookmarks/index'

  get 'bookmarks/show'

  get 'bookmarks/new'

  get 'bookmarks/create'

  get 'bookmarks/edit'

  get 'bookmarks/update'

  get 'bookmarks/destroy'

  get 'bookmarks/bookmark_params'

  resources :create_tags
  resources :create_categories
  resources :create_bookmarks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
