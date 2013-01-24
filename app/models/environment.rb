class Environment < ActiveRecord::Base
  attr_accessible :name, :token
  after_create :generate_token

  has_many :events

  private

  def generate_token
    self.update_attributes(token: SecureRandom.hex(16)) if token.blank?
  end
end
