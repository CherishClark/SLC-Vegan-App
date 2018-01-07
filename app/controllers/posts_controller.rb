class PostsController < ApplicationController
  before_action :set_post, only: [ :show, :edit, :update,:destroy]

  def index
    
  
    @posts = if params[:query]
       Post.where('title LIKE ?', "%#{params[:query]}%")
    else
      @posts = Post.all
    end
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: 'Your question was posted'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "post was updated"
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url, notice: "post deleted"
  end



private

  def post_params
    params.require(:post).permit(:title,
                                 :suggestions,
                                 :alternative_names,
                                 :query)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end

