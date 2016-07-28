class AddEventIdToInvitations < ActiveRecord::Migration[5.0]
  def change
    add_column :invitations, :attended_event_id, :integer
  end
end
