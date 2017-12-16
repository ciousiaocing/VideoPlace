class VideosController < ApplicationController
  before_action :authenticate_user!, only: [:show, :collect, :discollect]

  def index
    @videos = Video.all
    @video = Video.find_by(id: params[:id])

    render layout: "rootnavbar"
  end

  def show
    @videos = Video.all
    @video = Video.find_by(id: params[:id])

    @next_video = @video.next
    @prev_video = @video.prev

  end

  def collect
    @video = Video.find_by(id: params[:id])
    if !current_user.favorites?(@video)
      current_user.collect!(@video)
    end
    redirect_back fallback_location: root_path
  end

  def discollect
    @video = Video.find_by(id: params[:id])
    if current_user.favorites?(@video)
      current_user.discollect!(@video)
    end
    redirect_back fallback_location: root_path
  end
end
