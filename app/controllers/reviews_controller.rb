class ReviewsController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.cocktail = Cocktail.find(params[:cocktail_id])

    if @review.save
      redirect_to cocktail_path(params[:cocktail_id])
    else
      render :new
    end
  end

  def review_params
    return params.require(:review).permit(:content, :rating)
  end
end
