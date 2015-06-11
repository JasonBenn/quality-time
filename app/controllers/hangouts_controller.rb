class HangoutsController < ApplicationController
  def index
    @friend = Friend.find(params[:friend_id])
    @hangouts = @friend.hangouts
  end

  def create
    @hangout = Friend.find(params[:friend_id]).hangouts.create
  end
end
