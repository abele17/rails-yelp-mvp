class Review < ApplicationRecord
  RATINGS = [0, 1, 2, 3, 4, 5]
  belongs_to :restaurant
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: RATINGS}
  validates :content, presence: true
end
