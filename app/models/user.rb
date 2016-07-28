class User < ApplicationRecord
	has_many :events, foreign_key: :creator_id
	has_many :invitations, foreign_key: :attendee_id
	has_many :attended_events, through: :invitations

	def future_events
		self.attended_events.where("date > ?", Time.zone.now).all
	end

	def past_events
		self.attended_events.where("date < ?", Time.zone.now).all
	end

end
