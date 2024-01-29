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
    fill_in "Publisher", with: "Publisher"
    fill_in "Release date", with: "2012-09-05"
    fill_in "Pages", with: 300

    click_on "Create Book"

    book = Book.find_by(title: "Title")

    expect(book).to be_present
    expect(page).to have_current_path(book_path(book))
    expect(page).to have_content("successfully created")
  end

  it "does not create a book if it's invalid" do
    attributes = {
      "Title" => "Title",
      "Price" => 30,
      "Author" => "Author",
      "Published" => "2012-09-05",
      "Publisher" => "Publisher",
      "Release date" => "2012-09-05",
      "Pages" => 300
    }

    attributes.each do |attribute, value|
      visit "/books/new"

      attributes_except_current = attributes.except(attribute)

      attributes_except_current.each do |attr, val|
        fill_in attr, with: val
      end

      click_on "Create Book"

      expect(Book.count).to eq(0)
      expect(page).to have_content("error")
    end
  end
end
