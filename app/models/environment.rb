class Environment < ActiveRecord::Base
  attr_accessible :name, :token
  after_create :generate_token

  has_many :events

  def to_param
    "#{id}-#{name.parameterize}"
  end

  private

  def generate_token
    self.update_attributes(token: SecureRandom.hex(16)) if token.blank?
  end
end
