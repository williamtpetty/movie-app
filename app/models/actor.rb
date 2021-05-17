class Actor < ApplicationRecord

  validates :first_name, :last_name, length: {minimum: 2}
  validates :known_for, presence: true

end
