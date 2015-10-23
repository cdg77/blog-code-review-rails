class PostsController < ApplicationController
  def index
    @posts = Post.all
    render :index
  end

  def show
    @post = Post.find(params[:id])
    @tag = @post.tags.new
    render :show
  end

  def new
    @post = Post.new
    render :new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = 'Great!  We are blogging now!'
      redirect_to posts_path
    else
      flash[:alert] = 'Oops... Something went wrong!'
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    render :edit
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path

    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  # Note: The private method should be at the bottom of your controller code and only needs to be written once to be used by the create and update actions. Any code after private will not be accessible externally
  private
  def post_params
    params.require(:post).permit(:title, :author, :images, :body)
  end
end
