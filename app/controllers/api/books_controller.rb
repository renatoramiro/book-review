class Api::BooksController < ApplicationController
  before_action :set_book, only: [:show, :update, :destroy]

  # GET /api/books
  def index
    @books = Book.all

    render json: @books
  end

  def search
    @books = if params[:search]
      Book.where('title like ?', "%#{params[:search]}%")
    else
      Book.all
    end

    render json: @books
  end

  # GET /api/books/1
  def show
    render json: @book
  end

  # POST /api/books
  def create
    @book = Book.new(book_params)

    if @book.save
      render json: @book, status: :created, location: [:api, @book]
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/books/1
  def update
    if @book.update(book_params)
      render json: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/books/1
  def destroy
    @book.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def book_params
      params.require(:book).permit(:title, :author, :number_of_pages, :review)
    end
end
