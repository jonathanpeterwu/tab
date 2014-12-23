class ItemsController < ApplicationController
	def new
		@item = Item.new
	end

	def create
		@item = Item.create(params)
	end

	def show
		@item = Item.find(id: params[:id])
	end

	def edit
		@item = Item.find(id: params[:id])
		#do some editing
	end

	def update
		@item = Item.create(params)
	end

end