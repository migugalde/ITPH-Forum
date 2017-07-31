class PostsController < ApplicationController
    
    before_action :find_post, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]
    
    def index
        session[:sort] = params[:sort] if params[:sort] != nil
        session[:tag] = params[:tag] if params[:tag] != nil
        @posts = Post.all
        @tags = Tag.all
        
        if current_user.nil?
            @posts = Post.where(public: true)
        end
        
        if session[:tag]
            @posts = @posts.tagged_with(session[:tag])
        end
        
        #testing here
        # unless @tags.nil?
        #     @tags = @tags.order(session[:sort])
        # end
        #testing here
        
        @posts = @posts.order(session[:sort])
        if params[:all]
            session[:tag] = nil
            session[:sort] = nil
            redirect_to posts_path
        end
        
        @posts = @posts.paginate(:page => params[:page], :per_page => 7)
        
    end
    
    def show 
        @post = Post.find(params[:id])
    end
    
    def new
        @post = Post.new
        # @post = current_user.posts.build
    end
     
    def edit
        @post = Post.find(params[:id])
        if current_user.id != @post.user_id && (!(current_user.admin))
            redirect_to post_path(@post)
        end
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
            # rubyJSON = {:title => @post.title, :content => @post.content}.to_json
            # rubyJSON = {:title => "title", :content => "body"}.to_json
            # PostsBroadcastJob.perform_now(rubyJSON)
            PostsBroadcastJob.perform_now(@post)
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
        params.require(:post).permit(:title, :content, :all_tags, :description, :public)
    end
end