class Movie < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :list_movies
  has_many :movielists, through: :list_movies

  has_many :comments
  has_many :users, through: :comments
  

  has_many :genre_movies
  has_many :genres, through: :genre_movies

  
  def new
  end

  def self.get_score id
    movie = Movie.find(id)
    (movie.rec_num.quo(movie.watched_num).to_f*100).round(1)
  end

  def self.add (id, title, path, genres)
    movie = Movie.new(watched_num: 0, rec_num: 0, title: title, poster_path: path, genres: genres)
    movie.id = id
    movie.save
  end
end

