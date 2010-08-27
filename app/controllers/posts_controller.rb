class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.find(:all, :order => "created_at DESC")
    @uname = `uname -a`
    
  end
  
  def list
    @post = Post.new
    @posts = Post.find(:all, :order => "created_at DESC")
    render :layout => false
  end
  
  def create
    @post = Post.send_later( :save_whenever, params[:post], 60)
    @posts = Post.find(:all, :order => "created_at DESC")
    @uname = `uname -a`
    estimate = Delayed::Job.count.to_i * 60
    flash[:notice] = "Your post is number #{Delayed::Job.count.to_i} in the queue and should appear in less than #{estimate} seconds. "
    redirect_to posts_url
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Successfully destroyed post."
    redirect_to posts_url
  end
end
