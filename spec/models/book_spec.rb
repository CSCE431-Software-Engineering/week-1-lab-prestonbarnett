require 'rails_helper'

RSpec.describe Book, type: :model do
  subject {
    described_class.new(title: "Harry Potter",
                        price: 10,
                        author: "J.K. Rowling",
                        published: "2010-10-10")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end
end
