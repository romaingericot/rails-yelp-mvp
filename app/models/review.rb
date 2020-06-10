class Review < ApplicationRecord
  # A review must have a parent restaurant
  belongs_to :restaurant

  # A review must have content and a rating
  validates :content, presence: true
  validates :rating, presence: true
  # The rating should be a number between 0 and 5
  validates :rating, length: { in: 0..5 }
end
