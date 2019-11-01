class PostsController < ApplicationController
  def create
    @post = current_user.posts.create(post_params)
    if @post.save
      redirect_to root_url
    else
      redirect_to '/users/edit'
    end
  end

  private
  
  def post_params
    params.require(:post).permit(:body)
  end
end
