class Event < ActiveRecord::Base
  attr_accessible :campaign_id, :campaign_name, :customer_id, :email_address, :email_id, :event_id, :event_type, :subject, :timestamp, :environment_id
  validates_uniqueness_of :event_id

  belongs_to :environment

  default_scope order('created_at DESC')
end
