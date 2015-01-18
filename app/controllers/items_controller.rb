class ItemsController < ApplicationController

	def index
		@items = Item.all
		render json: @items
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new item_params
		if @item.save!
			render json: @item
		else
			p "error"
		end
	end

	def show
		@item = Item.find(params[:id])
		render json: @item
	end

	def edit
		@item = Item.find(params[:id])
		#do some editing
	end

	def update
		@item = Item.create(params)
	end

	private

	def item_params
    params.require(:item).permit(:title, :description, :price)
	end

end