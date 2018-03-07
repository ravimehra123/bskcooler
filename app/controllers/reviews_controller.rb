class ReviewsController < ApplicationController

	def index
		@product = Product.find_by(id: params[:product_id])
		@reviews = @product.reviews
	end

	def create
		if @product.present?
			@review = @product.reviews.create(review_params)
		end
		@reviews = @product.limited_reviews
		respond_to do |format|
			format.js
		end
	end
	
	private
	def review_params
		params.require(:review).permit(:reviewer_name, :reviewer_email, :title, :description)
	end

end
