class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_type
      t.string :event_id
      t.timestamp :timestamp
      t.string :customer_id
      t.string :email_address
      t.string :email_id
      t.string :subject
      t.string :campaign_id
      t.string :campaign_name

      t.timestamps
    end
  end
end
