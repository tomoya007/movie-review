class Movie < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  has_many :reviews 

  has_many :genre_movies
  has_many :genres, through: :genre_movies
end
