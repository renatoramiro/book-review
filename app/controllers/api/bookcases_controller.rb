class Api::BookcasesController < ApplicationController
  before_action :set_bookcase, only: [:show, :update, :destroy]

  # GET /api/bookcases
  def index
    @bookcases = Bookcase.where(reader_id: params[:reader_id])

    render json: @bookcases
  end

  # GET /api/bookcases/1
  def show
    render json: @bookcase
  end

  # POST /api/bookcases
  def create
    @bookcase = Bookcase.new(bookcase_params)
    @bookcase.reader_id = params[:reader_id]

    if @bookcase.save
      render json: @bookcase, status: :created, location: [:api, @bookcase.reader, @bookcase]
    else
      render json: @bookcase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/bookcases/1
  def update
    if @bookcase.update(bookcase_params)
      render json: @bookcase
    else
      render json: @bookcase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/bookcases/1
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
