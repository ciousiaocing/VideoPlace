class Account::FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @videos = current_user.favorite_videos
  end
end
