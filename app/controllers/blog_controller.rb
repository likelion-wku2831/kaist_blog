class BlogController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(title: params[:title], content: params[:content])
    @post.save
    redirect_to '/blog/index'
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(title: params[:title], content: params[:content])
    redirect_to "/blog/show/"+ @post.id.to_s
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/blog/index"
  end
end
