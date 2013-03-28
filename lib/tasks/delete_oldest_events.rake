desc "Delete all but the 9000 most recent events"
task delete_oldest_events: :environment do
  limit = Event.count - 9000
  if limit > 0
    ids = Event.reorder('created_at ASC').limit(limit).pluck(:id)
    Event.where(id: ids).delete_all
  end
end
