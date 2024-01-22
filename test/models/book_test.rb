require "test_helper"

class BookTest < ActiveSupport::TestCase
  setup do
    @book = Book.new(
      title: "Title",
      author: "Author",
      price: 10.5,
      published: Date.today
    )
  end

  test "should not save book without title" do
    @book.title = nil
    assert_not @book.save, "Saved the book without a title"
  end

  test "should not save book without author" do
    @book.author = nil
    assert_not @book.save, "Saved the book without an author"
  end

  test "should not save book without price" do
    @book.price = nil
    assert_not @book.save, "Saved the book without a price"
  end

  test "should not save book without published" do
    @book.published = nil
    assert_not @book.save, "Saved the book without a published"
  end

  test "should not save book with non-numeric price" do
    @book.price = "abc"
    assert_not @book.save, "Saved the book with a non-numeric price"
  end

  test "should not save book with negative price" do
    @book.price = -1
    assert_not @book.save, "Saved the book with a negative price"
  end

  test "should not save book with the same title" do
    @book.save
    another_book = @book.dup
    assert_not another_book.save, "Saved the book with the same title"
  end
end
