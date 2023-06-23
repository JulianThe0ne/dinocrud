class CommentsController < ApplicationController
  before_action :set_dinosaur, only: [:new, :create]

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.dinosaur = @dinosaur
    if @comment.save
      redirect_to dinosaur_path(@dinosaur)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to dinosaur_path(@comment.dinosaur), status: :see_other
  end
  private

  def set_dinosaur
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
