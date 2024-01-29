require 'rails_helper'

RSpec.describe "CreatingBooks", type: :system do
  before do
    driven_by(:rack_test)
  end

  it "creates a book and redirects to the book's page" do
    visit "/books/new"

    fill_in "Title", with: "Title"
    fill_in "Price", with: 30
    fill_in "Author", with: "Author"
    fill_in "Published", with: "2012-09-05"

    click_on "Create Book"

    book = Book.find_by(title: 'Title')

    expect(book).to be_present
    expect(page).to have_current_path(book_path(book))
    expect(page).to have_content("successfully created")
  end

  it "does not create a book if it's invalid" do
    visit "/books/new"

    fill_in "Title", with: ""
    fill_in "Price", with: 30
    fill_in "Author", with: "Author"
    fill_in "Published", with: "2012-09-05"

    click_on "Create Book"

    expect(Book.count).to eq(0)
    expect(page).to have_content("error")
  end
end
