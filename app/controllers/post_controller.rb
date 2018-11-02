class PostController < ApplicationController
  def home
  end
  
  def list
        @posts = Post.all
     end

     def show
        @post = Post.find(params[:id])
     end

     def new
        @post = Post.new
     end

     def post_params
        params.require(:posts).permit(:title, :content)
     end

     def create
        @post = Post.new(post_params)

        if @post.save
           redirect_to :action => 'list'
        end
     end

     def edit
        @post = Post.find(params[:id])
     end

     def post_param
        params.require(:post).permit(:title, :content)
     end

     def update
        @post = Post.find(params[:id])

        if @post.update_attributes(post_param)
           redirect_to :action => 'show', :id => @post
        end
     end

     def delete
        Post.find(params[:id]).destroy
        redirect_to :action => 'list'
     end
end
