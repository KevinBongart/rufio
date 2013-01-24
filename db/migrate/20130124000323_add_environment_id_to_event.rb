class AddEnvironmentIdToEvent < ActiveRecord::Migration
  def change
    add_column :events, :environment_id, :integer
  end
end
