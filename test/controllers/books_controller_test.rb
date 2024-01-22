require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book and set notice" do
    assert_difference("Book.count") do
      post books_url, params: { book: {
        title: "Unique Title",
        author: "Unique Author",
        price: 10.5,
        published: Date.today,
      } }
    end

    assert_redirected_to book_url(Book.last)
    assert_not_nil flash[:notice]
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book and set notice" do
    patch book_url(@book), params: { book: {
      title: @book.title,
      author: @book.author,
      price: @book.price,
      published: @book.published,
    } }
    assert_redirected_to book_url(@book)
    assert_not_nil flash[:notice]
  end

  test "should destroy book and set notice" do
    assert_difference("Book.count", -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
    assert_not_nil flash[:notice]
  end
end
