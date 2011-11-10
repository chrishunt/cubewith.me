class RoomsController < ApplicationController
  def new
    @room = Room.create
    redirect_to room_path(@room)
  end

  def show
    @room = Room.find_by_url_id(params[:id])
    redirect_to rooms_path if @room.nil?
  end
end
