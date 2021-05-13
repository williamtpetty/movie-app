class Movie < ApplicationRecord

  validates :title, length: {minimum: 1}
  validates :year, presence: true
  validates :plot, length: {in: 5..500}
  validates :director, presence: true
  validates :english, presence: true

end
