class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name,    presence: true, uniqueness: true
  validates :address, presence: true
  validates :category, inclusion: CATEGORIES
end
