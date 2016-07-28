class Event < ApplicationRecord
	belongs_to :creator, class_name: "User"
	has_many :invitations, foreign_key: "attended_event_id"
	has_many :attendees, through: :invitations

	validates :name, :location, :description, :date, presence: true

	scope :future, -> { where("date > ?", Time.zone.now) }
	scope :past,   -> { where("date < ?", Time.zone.now) }
	
end
