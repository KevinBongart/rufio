class Event < ActiveRecord::Base
  attr_accessible :campaign_id, :campaign_name, :customer_id, :email_address, :email_id, :event_id, :event_type, :subject, :timestamp

  default_scope order('created_at DESC')
end
