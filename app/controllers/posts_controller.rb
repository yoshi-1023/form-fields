class PostsController < ApplicationController
  def new
    @post = Post.new
    @tag = @post.tags.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render "new"
    end
  end

  private

  def post_params
    params.require(:post).permit(:content, tags_attributes: [:content, :_destroy, :id])
  end
end

