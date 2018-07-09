class CommentsController < ApplicationController
  def index
    render json: Comment.all
  end

  def create
    comment = Comment.create(comment_params)
    render json: comment
  end

  def destroy
    Comment.destroy(params[:id])
  end

  def update
    comment = Comment.find(params[:id])
    comment.update_attributes(comment_params)
    render json: comment
  end

  private

  def fruit_params
    params.require(:comment).permit(:id, :name, :description)
  end
end
