class RelationshipsController < ApplicationController
	# If you use Devise, use the following instead of if logged_in?.
  	# before_action :authenticate_user!
  respond_to? :js # You can write like this if you return the respond of all the existing actions with js.

  def create
    # If you created your own login function, you should have implemented it yourself.
    # use the logged_in? method you implemented by yourself and make it possible to like it, only when logged in.
    if logged_in?
      @user = User.find(params[:relationship][:followed_id])
      current_user.follow!(@user)
    end
  end
  def destroy
  @user = Relationship.find(params[:id]).followed
  current_user.unfollow!(@user)
  end
end
