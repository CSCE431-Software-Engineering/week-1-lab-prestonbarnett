class Book < ApplicationRecord
  validates :title, :price, :author, :published, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :title, uniqueness: true
end
