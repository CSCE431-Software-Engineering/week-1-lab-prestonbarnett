class Book < ApplicationRecord
  validates :title, :price, :pages, :publisher, :release_date, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :pages, numericality: { greater_than_or_equal_to: 0 }
  validates :title, uniqueness: true
end
