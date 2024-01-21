class Book < ApplicationRecord
  validates :title, :price, :author, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :title, uniqueness: true
end
