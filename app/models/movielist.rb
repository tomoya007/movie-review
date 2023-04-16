class Movielist < ApplicationRecord
  belongs_to :user
  has_many :list_movies
  has_many :movies, through: :list_movies

  validates :user_id, presence: true
  validates :listname, presence: true
end
