class Link < ApplicationRecord
  has_many :link_visits
  validates_presence_of :url
  validates :url, format: URI::regexp(%w[http https])
  validates_uniqueness_of :token

  before_validation :generate_token

  def generate_token
    self.token = SecureRandom.uuid[0..5] if self.token.nil? || self.token.empty?
    true
  end


end
