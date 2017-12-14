class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :favorites
  has_many :favorite_videos, through: :favorites, source: :video

  def admin?
    is_admin
  end

  def favorites?(video)
    favorite_videos.include?(video)
  end

  def collect!(video)
    favorite_videos << video
  end

  def discollect!(video)
    favorite_videos.delete(video)
  end
end
