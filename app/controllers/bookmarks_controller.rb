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

	end
	
	def edit

	end

	def update

	end

	def destroy

	end

	private 
	def set_bookmark
		@bookmark = Bookmark.find(params[:id])
	end

	def bookmark_params
		params.require(:bookmark).permit(:category_id,:cbm_id ,:cbm_index,:parent_id ,:name, :url)
	end
end
