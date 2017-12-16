class Video < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :favorites
  has_many :collectors, through: :favorites, source: :user

  has_many :reviews

  def next
    Video.where("id > ?", id).first
  end

  def prev
    Video.where("id < ?", id).last
  end

end
