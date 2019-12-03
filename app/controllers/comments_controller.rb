class CommentsController < ApplicationController
 before_action :find_product
 before_action :find_comment, only: [:destroy, :edit , :update]
def create
@comment = @product.comments.create(params[:comment].permit(:description))
@comment.save
if @comment.save
  redirect_to product_path(@product)
else
  render 'new'
end
end
def destroy
@comment.destroy
redirect_to product_path(@product)
end
def edit
end
def update
if @comment.update(params[:comment].permit(:description))
  redirect_to product_path(@product)
  else
    render 'edit'
  end
end
private
def find_product
  @product = Product.find(params[:product_id])
end
def find_comment
  @comment = @product.comments.find(params[:id])
end
end
