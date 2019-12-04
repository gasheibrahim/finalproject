class LineitemsController < ApplicationController
  include CurrentCart
  before_action :set_lineitem, only: [:show, :edit, :update, :destroy]
  before_action :set_cart, only: [:create]
  def index
    @lineitems = Lineitem.all
  end

  def show
  end

  def new
    @lineitem = Lineitem.new
  end

  def edit
  end

  def create
    product = Product.find(params[:product_id])
    @lineitem = @cart.add_product(product)
    if @lineitem.save
      redirect_to @lineitem, notice: 'product added to cart.'
    else
      render :new
    end
  end

  def update
    if @lineitem.update(lineitem_params)
      redirect_to @lineitem, notice: 'Lineitem was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @cart = Cart.find(session[:cart_id])
    @lineitem.destroy
    redirect_to cart_path(@cart), notice: 'Lineitem was successfully destroyed.'
  end

  private
    def set_lineitem
      @lineitem = Lineitem.find(params[:id])
    end
    
    def lineitem_params
      params.require(:lineitem).permit(:product_id)
    end
end
