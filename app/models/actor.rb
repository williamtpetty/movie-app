class Actor < ApplicationRecord

  validates :first_name, :last_name, length: {minimum: 2}
  validates :known_for, presence: true

  belongs_to :movie

  def reveal_plot
    movie.plot
  end

end
