class CategoriesController < ApplicationController
	before_action :set_category, only: [:show, :edit, :update, :destroy]

	def index
		@categories = Category.all
	end

	def show 
	end

	def new
		@category = Category.new
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
	def set_category
		@category = Category.find(params[:id])
	end

	def category_params
		params.require(:category).permit(:cbm_id , :name, :description)
	end
end
