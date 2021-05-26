class Genre < ApplicationRecord

  has_many :movie_genres
  has_many :movies, through: :movie_genres

  belongs_to :movie

end
