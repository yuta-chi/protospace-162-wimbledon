class CommentsController < ApplicationController
  before_action :set_prototype, only: [:create]

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to prototype_path(@comment.prototype) 
    else
      @prototype = @comment.prototype
      @comments = @prototype.comments
      render "prototypes/show", status: :unprocessable_entity
    end
  end

  private

  def set_prototype
    @prototype = Prototype.find(params[:prototype_id])
  end

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
