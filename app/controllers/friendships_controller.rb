class FriendshipsController < ApplicationController
  def index
    @friendships=Friendship.all
    if params[:search]
      @usersearch = User.search(params[:search]).order("created_at DESC")
    else
      @usersearch = nil
    end
  end
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      redirect_to root_url
    else
      redirect_to root_url
    end
  end
  
  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Removed friendship."
    redirect_to root_url
  end
end