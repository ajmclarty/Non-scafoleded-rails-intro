class PostsController < ApplicationController

	#Route defined for this index action, the URL being /posts 
  def index
  	@posts = Post.all
  end
  #after this index action executes Rails will load the index.html.erb
  def show
  	@post = Post.find(params[:id])
  end#auto load the show.html.erb

  def new
  	@post = Post.new
  end#load the new.html.erb

  def create
  	#Create a new post object with the data the user submitted from the new view form 
  	@post = Post.new(params[:post])
  	#validation pass we redirect to the index action
  	if (@post.save)
  		redirect_to :action => :index
  	else
  		render :action => :new
  	end 
  end#only loads a view on error otheriwse reads direct
end
