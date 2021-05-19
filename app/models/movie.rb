class Movie < ApplicationRecord

  validates :title, length: {minimum: 1}
  validates :year, presence: true
  validates :plot, length: {in: 5..1000}
  validates :director, presence: true

  has_many :actors

end
