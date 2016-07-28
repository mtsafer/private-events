class InvitationsController < ApplicationController
  def create
  	event = Event.find(params[:id])
  	invitation = Invitation.new(attendee: current_user, attended_event: event)
  	invitation.save
  	redirect_to current_page
  end
end
