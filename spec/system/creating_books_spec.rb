require 'rails_helper'

RSpec.describe "CreatingBooks", type: :system do
  before do
    driven_by(:rack_test)
  end

  it "creates a new book and redirects to the book's page" do
    visit "/books/new"

    fill_in "Title", with: "Harry Potter"
    fill_in "Price", with: 10.00
    fill_in "Pages", with: 100
    fill_in "Publisher", with: "Bloomsbury"
    fill_in "Release date", with: "26/06/1997"

    click_on "Create Book"

    book = Book.find_by(title: 'Harry Potter')

    expect(book).to be_present
    expect(page).to have_current_path(book_path(book))
    expect(page).to have_content("Harry Potter")
    expect(page).to have_content("10.0")
    expect(page).to have_content("Book was successfully created.")
  end

  it "does not create a new book if title is blank" do
    visit "/books/new"

    fill_in "Title", with: ""
    fill_in "Price", with: 10.00
    fill_in "Pages", with: 100
    fill_in "Publisher", with: "Bloomsbury"
    fill_in "Release date", with: "26/06/1997"

    click_on "Create Book"

    expect(Book.count).to eq(0)
    expect(page).to have_content("Title can't be blank")
  end
end
