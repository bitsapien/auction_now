json.extract! bid_event, :id, :auctionable_id, :participant_id, :final, :created_at, :updated_at
json.url bid_event_url(bid_event, format: :json)