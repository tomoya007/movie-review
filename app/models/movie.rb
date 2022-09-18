class Movie < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  has_many :reviews # Movie.reviewsで、投稿が所有するコメントを取得できる

  has_many :genre_movies
  has_many :genres, through: :genre_movies
end
