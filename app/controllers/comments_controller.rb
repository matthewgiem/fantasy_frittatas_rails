class CommentsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @comment = @user.comments.new
  end

  def index
    @comments = Comment.all
  end

  def create
    @user = User.find(params[:user_id])
    @comment = @user.comments.new(comment_params)
    if @comment.save
      redirect_to user_path(@comment.user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to user_path(@comment.user)
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to user_path(@comment.user)
  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end
end
