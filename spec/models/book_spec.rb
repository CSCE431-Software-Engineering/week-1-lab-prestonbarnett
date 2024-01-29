require 'rails_helper'

RSpec.describe Book, type: :model do
  subject {
    described_class.new(title: "Harry Potter",
                        price: 10.00,
                        pages: 100,
                        publisher: "Bloomsbury",
                        release_date: "26/06/1997")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a price" do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a negative price" do
    subject.price = -1.00
    expect(subject).to_not be_valid
  end

  it "is not valid with a non-numeric price" do
    subject.price = "abc"
    expect(subject).to_not be_valid
  end

  it "is not valid with a non-unique title" do
    Book.create(title: "Harry Potter",
                price: 10.00,
                pages: 100,
                publisher: "Bloomsbury",
                release_date: "26/06/1997")
    expect(subject).to_not be_valid
  end

  it "is not valid without pages" do
    subject.pages = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a release date" do
    subject.release_date = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a publisher" do
    subject.publisher = nil
    expect(subject).to_not be_valid
  end
end
