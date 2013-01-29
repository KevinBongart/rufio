class Event < ActiveRecord::Base
  attr_accessible :campaign_id, :campaign_name, :customer_id, :email_address, :email_id, :event_id, :event_type, :subject, :timestamp, :environment_id

  belongs_to :environment

  default_scope order('created_at DESC')
  scope :errors, where(event_type: :email_bounced)

  self.per_page = 100
end
