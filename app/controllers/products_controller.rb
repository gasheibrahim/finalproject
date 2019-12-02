class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = if params[:search]
    Product.where('product_name LIKE ? or product_category LIKE ?', "%#{params[:search]}%","%#{params[:search]}%").page params[:page]
    else
    @products = Product.order_list(params[:sort_by]).page params[:page]
  end
  def search
   @product =product.search(params[:search])
  end
  def home
    @products = Product.all
  end
  def show
  end
  def new
    @product = Product.new
  end
  def edit
  end
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new
    end
  end
  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end
  def destroy
    @product.destroy
    redirect_to products_url, notice: 'Product was successfully destroyed.'
  end
  private
    def set_product
      @product = Product.find(params[:id])
    end
    def product_params
      params.require(:product).permit(:product_name, :image, :image_cache, :product_details, :product_price, :product_category, :search, :user_id)
    end
end
