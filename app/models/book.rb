class Book < ApplicationRecord
  validates :title, :price, :author, :published, :publisher, :release_date, :pages, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :title, uniqueness: true
end
