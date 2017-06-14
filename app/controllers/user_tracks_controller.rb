class UserTracksController < ApplicationController
  def create
    track = Track.find(params[:track_id])
    StartsTrack.start!(current_user, track)
    redirect_to track
  end
end