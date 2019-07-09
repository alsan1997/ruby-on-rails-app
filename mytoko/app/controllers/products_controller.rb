class ProductsController < ApplicationController
	def new
	end

	def index
		@user = User.find(session[:user_id])
	end

	def create
		@user = User.find(params[:user_id])
    	@products = @user.products.create(product_params)
    	redirect_to user_products_path(@user.id)
		#render plain: params[:product].inspect
	end

	def destroy
		@user = User.find(params[:user_id])
		@product = @user.products.find(params[:id])
		@product.destroy
		redirect_to user_products_path(@user.id)
	end

	private
		def product_params
			params.require(:product).permit(:name)
		end
end
