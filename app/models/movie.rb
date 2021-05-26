class Movie < ApplicationRecord

  validates :title, length: {minimum: 1}
  validates :year, presence: true
  validates :plot, length: {in: 5..1000}
  validates :director, presence: true

  has_many :actors

  has_many :movie_genres
  has_many :genres, through: :movie_genres


  def genre_names
    # genres.collect do |genre| 
    #   genre["name"]
    # end
    genres.collect { |genre| genre["name"] }
  end

end
