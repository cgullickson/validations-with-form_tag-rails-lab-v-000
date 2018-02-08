class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new(post_params)
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end

  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
