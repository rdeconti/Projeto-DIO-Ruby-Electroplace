class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(form_params)

    if @product.save
      redirect_to new_product_path
    else
      render :new
    end
  end

  private

  def form_params
    params.require(:product).permit(:name, :price, :image)
  end

end
