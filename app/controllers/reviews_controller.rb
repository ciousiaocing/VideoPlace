class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @video = Video.find_by(id: params[:video_id])
    @review = @video.reviews.new(review_params)
    @review.video = @video
    @review.user = current_user

    if @review.save
      redirect_to video_path(@video)
    end
  end

  def destroy
    @video = Video.find_by(id: params[:video_id])
    @review = Review.find_by(id: params[:id])
    @review.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
