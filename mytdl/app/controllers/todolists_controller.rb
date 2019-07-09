class TodolistsController < ApplicationController
	http_basic_authenticate_with name: "root", password: "root", except: [:index, :show]

	def index
		@todolists = Todolist.all
	end

	def show
    	@todolist = Todolist.find(params[:id])
    end

    def edit
  		@todolist = Todolist.find(params[:id])
	end

	def new
		@todolist = Todolist.new
	end

	def create
  		@todolist = Todolist.new(todolist_params)

  		if @todolist.save
  			redirect_to @todolist
  		else
  			render 'new'
  		end
	end

	def update
		@todolist = Todolist.find(params[:id])

  		if @todolist.update(todolist_params)
  			redirect_to @todolist
  		else
  			render 'edit'
  		end
	end

	def destroy
		@todolist = Todolist.find(params[:id])
		@todolist.destroy

		redirect_to todolists_path
	end

	private
		def todolist_params
			params.require(:todolist).permit(:tdl)
		end
end
