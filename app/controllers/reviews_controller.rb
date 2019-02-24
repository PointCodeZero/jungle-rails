class ReviewsController < ApplicationController
  before_action :find_product
  before_filter :authorize

  def create
    review = Review.new(review_params)
    review.product_id = params[:product_id]
    review.user_id = session[:user_id]
    
    if review.save
      review.save
      redirect_to "/products/#{@product.id}"
    else
      redirect_to "/products/#{@product.id}"
    end
  end

  private

  def find_product
    @product = Product.find params[:product_id]
  end

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end
