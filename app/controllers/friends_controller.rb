class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def create
    @friend = Friend.create(friend_params)
    render :show
  end

  def show
    @friend = Friend.find(params[:id])
  end

  private

  def friend_params
    params.require(:friend).permit(:name)
  end
end
