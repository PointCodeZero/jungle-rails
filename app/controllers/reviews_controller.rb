class ReviewsController < ApplicationController
  before_action :find_product

  private

  def find_product
    @product = Product.find params[:product_id]
  end
end
