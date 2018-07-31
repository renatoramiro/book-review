require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'is valid title, author, number_of_pages and review' do
    expect(FactoryBot.build(:book)).to be_valid
  end
  it 'is invalid without title' do
    book = FactoryBot.build(:book, title: nil)
    book.valid?
    expect(book.errors[:title]).to include("can't be blank")
  end
  it 'is invalid without author' do
    book = FactoryBot.build(:book, author: nil)
    book.valid?
    expect(book.errors[:author]).to include("can't be blank")
  end
  it 'is invalid without number_of_pages' do
    book = FactoryBot.build(:book, number_of_pages: nil)
    book.valid?
    expect(book.errors[:number_of_pages]).to include("can't be blank")
  end
  it 'is invalid without review' do
    book = FactoryBot.build(:book, review: nil)
    book.valid?
    expect(book.errors[:review]).to include("can't be blank")
  end
end
