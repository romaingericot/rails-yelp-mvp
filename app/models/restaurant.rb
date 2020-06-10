class Restaurant < ApplicationRecord
  # A restaurant has a name, an address, a phone number, a category (chinese, italian…) and many reviews
  # When a restaurant is destroyed, all of its reviews should be destroyed as well
  has_many :reviews, dependent: :destroy

  # A restaurant must have at least a name, an address and a category + phone number
  validates :name, :phone_number, :address, :category, presence: true
  # The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, acceptance: { accept: ["chinese", "italian", "japanese", "french", "belgian"] }
end
