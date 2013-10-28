class PostsController < ApplicationController

	#Route defined for this index action, the URL being /posts 
  def index
  	@posts = Post.all
  end
  #after this index action executes Rails will load the index.html.erb
end
