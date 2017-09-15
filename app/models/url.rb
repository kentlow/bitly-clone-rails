require 'securerandom'

class Url < ApplicationRecord
  before_create :shorten
  validates :long_url, format: URI::regexp(%w(http https))

  def shorten
    self.short_url = SecureRandom.hex(3)
  end
end
