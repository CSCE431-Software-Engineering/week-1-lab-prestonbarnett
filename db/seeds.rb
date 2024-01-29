# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Clear existing book data
Book.destroy_all

# Seed new book data
Book.create!([
  { title: "1984", author: "George Orwell", price: 9.99, published: "1949-06-08", release_date: "1949-06-08", publisher: "Secker & Warburg", pages: 328 },
  { title: "To Kill a Mockingbird", author: "Harper Lee", price: 8.99, published: "1960-07-11", release_date: "1960-07-11", publisher: "J. B. Lippincott & Co.", pages: 281 },
  { title: "The Catcher in the Rye", author: "J.D. Salinger", price: 10.99, published: "1951-07-16", release_date: "1951-07-16", publisher: "Little, Brown and Company", pages: 234 },
  { title: "The Great Gatsby", author: "F. Scott Fitzgerald", price: 12.49, published: "1925-04-10", release_date: "1925-04-10", publisher: "Charles Scribner's Sons", pages: 218 },
  { title: "Pride and Prejudice", author: "Jane Austen", price: 7.99, published: "1813-01-28", release_date: "1813-01-28", publisher: "T. Egerton, Whitehall", pages: 432 },
  { title: "Animal Farm", author: "George Orwell", price: 6.99, published: "1945-08-17", release_date: "1945-08-17", publisher: "Secker & Warburg", pages: 112 },
  { title: "Brave New World", author: "Aldous Huxley", price: 9.99, published: "1932-01-01", release_date: "1932-01-01", publisher: "Chatto & Windus", pages: 311 },
  { title: "Fahrenheit 451", author: "Ray Bradbury", price: 9.99, published: "1953-10-19", release_date: "1953-10-19", publisher: "Ballantine Books", pages: 158 },
  { title: "Jane Eyre", author: "Charlotte Brontë", price: 8.99, published: "1847-10-16", release_date: "1847-10-16", publisher: "Smith, Elder & Co.", pages: 500 },
  { title: "Moby Dick", author: "Herman Melville", price: 11.99, published: "1851-10-18", release_date: "1851-10-18", publisher: "Richard Bentley (London), Harper & Brothers (New York City)", pages: 635 },
])
