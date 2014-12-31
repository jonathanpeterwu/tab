class TabsController < ApplicationController

	def index
		@tabs = Tab.all
	end

	def new
		@tab = Tab.new
	end

	def create
		@tab = Tab.create(params)
	end

	def show
		@tab = Tab.find(id: params[:id])
	end

	def edit
		@tab = Tab.find(id: params[:id])
		#do some editing
	end

	def update
		@tab = Tab.create(params)
	end

	def destroy
		# do nothing yet
	end

end