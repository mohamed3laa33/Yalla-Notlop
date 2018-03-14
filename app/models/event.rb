class Event < ApplicationRecord
	after_create_commit { EventBroadcastJob.perform_later self }
# 	after_create_commit {broadcast_notification}

# def broadcast_notification
#   ActionCable.server.broadcast "activity_channel_#{self.user_id}", message: 'some message'
# end
end
