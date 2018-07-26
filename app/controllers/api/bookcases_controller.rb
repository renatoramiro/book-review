class Api::BookcasesController < ApplicationController
  before_action :set_bookcase, only: [:show, :update, :destroy]

  # GET /bookcases
  def index
    @bookcases = Bookcase.all

    render json: @bookcases
  end

  # GET /bookcases/1
  def show
    render json: @bookcase
  end

  # POST /bookcases
  def create
    @bookcase = Bookcase.new(bookcase_params)

    if @bookcase.save
      render json: @bookcase, status: :created, location: [:api, @bookcase]
    else
      render json: @bookcase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookcases/1
  def update
    if @bookcase.update(bookcase_params)
      render json: @bookcase
    else
      render json: @bookcase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookcases/1
  def destroy
    @bookcase.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookcase
      @bookcase = Bookcase.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bookcase_params
      params.require(:bookcase).permit(:book_id, :reader_id, :evaluation)
    end
end
