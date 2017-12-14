class VideosController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :collect, :discollect]

  def index
    @videos = Video.all
    @video = Video.find_by(id: params[:id])
  end

  def show
    @videos = Video.all
    @video = Video.find_by(id: params[:id])
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
