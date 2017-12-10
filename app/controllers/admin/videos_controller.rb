class Admin::VideosController < ApplicationController
  # before_action :authenticate_user!

  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to admin_videos_path
    else
      render :new
    end
  end

  def edit
    @video = Video.find_by(params[:id])
  end

  def update
    @video = Video.find_by(params[:id])
    if @video.update(video_params)
      redirect_to admin_videos_path
    else
      render :edit
    end
  end

  def destroy
    @video = Video.find_by(params[:id])
    @video.delete
    redirect_to admin_videos_path
  end

  private

  def video_params
    params.require(:video).permit(:wistia, :description, :title)
  end

end