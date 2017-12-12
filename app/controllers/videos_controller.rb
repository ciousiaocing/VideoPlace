class VideosController < ApplicationController
  def index
    @videos = Video.all
    @video = Video.find_by(params[:id])
  end

  def show
    @videos = Video.all
    @video = Video.find_by(params[:id])
  end
end
