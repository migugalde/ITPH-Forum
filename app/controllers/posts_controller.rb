class PostsController < ApplicationController
    
    before_action :find_post, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]
    
    def index
        if params[:tag]
            @posts = Post.tagged_with(params[:tag])
        else
            @posts = Post.all.order(params[:sort])
        end
    end
    
    def show 
    end
    
    def new
        #@post = Post.new
        @post = current_user.posts.build
    end
     
    def edit
    end
    
    def update
        if @post.update(post_params)
            redirect_to @post
        else
            render 'new'
        end
    end
    
    def destroy
        @post.destroy
        redirect_to posts_path
    end

    def create
        @post = current_user.posts.build(post_params)
        #@post = Post.new(post_params)
        if @post.save
            redirect_to @post
        else
            render 'new'
        end
    end
    
    private
    
    def find_post
        @post = Post.find(params[:id])
    end
    
    def post_params
        params.require(:post).permit(:title, :content)
    end
    
    private
    def post_params
        params.require(:post).permit(:title, :content, :all_tags)
    end

end
