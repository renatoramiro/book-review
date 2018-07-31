require 'rails_helper'

RSpec.describe "Api::Books", type: :request do
  describe "GET /api/books" do
    it "should list all books" do
      FactoryBot.create(:book)
      FactoryBot.create(:book, title: 'Book 2')

      get api_books_path
      expect(response).to have_http_status(200)

      json = JSON.parse(response.body)
      expect(json.length).to eq 2
      expect(json[0]["title"]).to eq('First book')
    end
  end

  describe "GET /api/books/:id" do
    before(:each) do
      @book = FactoryBot.create :book
    end

    it "should get a book by id" do
      get api_book_path(@book.id)
      expect(response).to have_http_status(200)

      json = JSON.parse(response.body)
      expect(json["title"]).to eq('First book')
    end
  end

  describe "POST /api/books/" do
    before(:each) do
      @book = FactoryBot.build :book
    end

    it "should create a book" do
      post api_books_path, params: {
        book: {
          title: @book.title,
          author: @book.author,
          number_of_pages: @book.number_of_pages, 
          review: @book.review
        }
      }
      expect(response).to have_http_status(201)

      json = JSON.parse(response.body)
      expect(json["title"]).to eq('First book')
    end
  end

  describe "PUT /api/books/:id" do
    before(:each) do
      @book = FactoryBot.create :book
    end

    it "should update a book" do
      put api_book_path(@book.id), params: {
        book: {
          title: 'Book updated'
        }
      }
      expect(response).to have_http_status(200)

      json = JSON.parse(response.body)
      expect(json["title"]).to eq('Book updated')
    end
  end

  describe "DELETE /api/books/:id" do
    before(:each) do
      @book = FactoryBot.create :book
    end

    it "should delete a book" do
      delete api_book_path(@book.id)
      expect(response).to have_http_status(204)
    end
  end
end
