class BookmarksController < ApplicationController
	before_action :set_bookmark, only: [:show, :edit, :update, :destroy]

# AR Query Methods - .find/.find_by, .first, .last, .take, .where
# CRUD in AR: #new, #create, #build, #save, #update, #destroy, .destroy_all
# Bonus: before :each"

	def index
		@bookmarks = Bookmark.all
		@categories = Category.tek_only
	end

	def show 
	end

	def new
		@bookmark = Bookmark.new
	end

	def create
		@bookmark = Bookmark.new(bookmark_params)
		if @bookmark.save
			redirect_to bookmark_path(@bookmark)
		else
			render 'bookmarks/new'
		end
	end
	
	def edit
	end

	def update
		@bookmark.update(bookmark_params)
		if @bookmark.save
			redirect_to bookmark_path(@bookmark)
		else
			render 'bookmarks/edit'
		end
	end

	def destroy
		@bookmark.destroy
	end

	private 
	def set_bookmark
		@bookmark = Bookmark.find(params[:id])
	end

	def bookmark_params
		params.require(:bookmark).permit(:category_id,:cbm_id ,:cbm_index,:parent_id ,:name, :url)
	end
end
