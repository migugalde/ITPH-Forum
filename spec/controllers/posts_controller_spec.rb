require 'rails_helper'

describe PostsController do
  
  describe 'New method' do
    before :each do
        @user= double(User, :first_name => "Antex", :Last_name => "Kora", :email => "kora@example.com", :admin => "true")
        @post = double(Post, :id => "100", :title => "intro", :content => "too many stuffs here wriiten")
        
        # @fake_post = FactoryGirl.create(:post)
        # @fake_post = build(:user)
        # @user = crea
        expect(@post.title).to eq ("intro")
        expect(Post).to receive(:find).with("100").and_return(@post)
    end
    
     it 'retrieves the post by the user_id' do
      get :create, {:id => "100"}
      end 
  end
end 
    
#     it 'Similar Directors' do
#       get :director, {:movie_id => "199", :movie => @m}
#     end
    
#     it "Movie with a director" do
#         expect(@m).to receive(:director).and_return("Tess Ber")
#         expect(Movie). to receive(:movies_directed_by)
#         get :director, {:movie_id => "199", :movie => @m}
#     end
    
#     it "Similar Movies" do
#         get :director, {:movie_id => "199", :movie => @m}
#         expect(response).to render_template('director')
#     end
#   end 
#   #################
#   describe 'sad path' do
#     before :each do
#       @m = double(Movie, :title => "Tess", :director => nil, :id => "199")
#       expect(Movie).to receive(:find).with("199").and_return(@m)
#     end
    
#     it "The Movie without a director" do
#       expect(@m).to receive(:director).and_return(nil)
#       get :director, {:movie_id => "199", :movie => @m}
#     end
    
#     it "non empty flash" do
#       get :director, {:movie_id => "199", :movie => @m}
#       expect(flash[:warning]).to_not be_blank
#     end
#   end
#   #%%%%%%%%%%%%%%%%%%%%%%%%
#   describe 'Create' do 
#     it "Movie should be created" do
#       @fake_movie = FactoryGirl.create(:movie)
#       expect(@fake_movie.title).to eq ("Wow")
#       #post :create, :movie => {:title => @fake_movie.title}
#       #post :create, :movie => {:id => @fake_movie.id}
#       #post :create, :movie => {:rating => @fake_movie.rating}
#       #post :create, :movie => {:director => @fake_movie.director}
#       post :create, :movie => {:release_date => @fake_movie.release_date}
#       expect(flash[:notice]).to_not be_blank
#       expect(response).to redirect_to(movies_path)
#     end
#   end
  
#   describe 'Destroy' do
#     it "Movie destruction" do
#       @m = double(Movie, :title => "Alien", :director => "Ridley Scott", :id => "1")
#       expect(Movie).to receive(:find).with("1").and_return(@m)
#       expect(@m).to receive(:destroy)
#       post :destroy, {:id => "1"}
#     end
#   end
  
#   describe 'Update' do
#     it "Update a Movie" do
#       @fake_movie = FactoryGirl.create(:movie)
#       put :update, {:id => @fake_movie.id, :movie => {:title => @fake_movie.title, :rating => @fake_movie.rating, :description => @fake_movie.description, :release_date => @fake_movie.release_date, :director => @fake_movie.director}}
#     end
#   end
  
#   describe 'Index' do
#     it "Sort by title" do
#       get :index, {:sort => 'title'}
#     end
    
#      it "Sort by Release" do
#       get :index, {:sort => 'release_date'}
#     end
    
#     it "Ratings " do
#       expect(Movie).to receive(:all_ratings)
#       get :index, {:ratings => {:PG => "1"}}
#     end
#   end
#  end

