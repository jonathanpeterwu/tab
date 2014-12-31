class ItemsController < ApplicationController

	def index
		@items = Item.all
		render json: @items
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new
		@item.title = params[:item][:title]
		@item.description = params[:item][:description]
		@item.price = params[:item][:price]
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

end