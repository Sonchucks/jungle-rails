class ReviewsController < ApplicationController
  def create
    @product = Product.find_by(id: params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.user_id = session[:user_id]
    if @review.save!
      redirect_to :back
    else
      @status = true
      redirect_to :back
    end
  end
  private
    def review_params
      params.require(:review).permit(
        :description,
        :rating
      )
    end
end
