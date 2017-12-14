class Video < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :favorites
  has_many :collectors, through: :favorites, source: :user
end
