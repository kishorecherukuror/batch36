class ProductsController < ApplicationController
  before_action :set_product, :only => [:show,:edit,:update,:destroy]
  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(product_params)
  	if @product.save
  		redirect_to  products_list_path
    else
      render 'new'
  	end
  end

  def list
  	@products = Product.all
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to products_list_path
    end
  end

  def destroy
    if @product.delete
      redirect_to products_list_path
    end
  end

private
def set_product
    @product = Product.find(params[:id])
end

def product_params
	params.require(:product).permit!
end


end
