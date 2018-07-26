class Api::ReadersController < ApplicationController
  before_action :set_reader, only: [:show, :update, :destroy]

  # GET /readers
  def index
    @readers = Reader.all

    render json: @readers
  end

  # GET /readers/1
  def show
    render json: @reader
  end

  # POST /readers
  def create
    @reader = Reader.new(reader_params)

    if @reader.save
      render json: @reader, status: :created, location: [:api, @reader]
    else
      render json: @reader.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /readers/1
  def update
    if @reader.update(reader_params)
      render json: @reader
    else
      render json: @reader.errors, status: :unprocessable_entity
    end
  end

  # DELETE /readers/1
  def destroy
    @reader.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reader
      @reader = Reader.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reader_params
      params.require(:reader).permit(:name, :email)
    end
end
