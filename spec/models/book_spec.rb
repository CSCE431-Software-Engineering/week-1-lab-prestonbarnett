require 'rails_helper'

RSpec.describe Book, type: :model do
  subject {
    described_class.new(title: "Harry Potter",
                        price: 10,
                        author: "J.K. Rowling",
                        published: "2010-10-10",
                        publisher: "Scholastic",
                        release_date: "2010-10-10",
                        pages: 300)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a publisher" do
    subject.publisher = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a release date" do
    subject.release_date = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without pages" do
    subject.pages = nil
    expect(subject).to_not be_valid
  end
end
