class Api::CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]

  # GET /api/book/:book_id/comments
  def index
    @comments = Comment.where(book_id: params[:book_id])

    render json: @comments
  end

  # GET /api/book/:book_id/comments/1
  def show
    render json: @comment
  end

  # POST /api/book/:book_id/comments
  def create
    @comment = Comment.new(comment_params)
    @comment.book_id = params[:book_id]

    if @comment.save
      render json: @comment, status: :created, location: [:api, @comment.book, @comment]
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/book/:book_id/comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/book/:book_id/comments/1
  def destroy
    @comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.where(id: params[:id], book_id: params[:book_id]).first
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:book_id, :body)
    end
end
