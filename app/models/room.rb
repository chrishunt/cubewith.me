class Room < ActiveRecord::Base
  before_create :generate_url_id

  def to_param
    url_id
  end

  private
  def generate_url_id
    self.url_id ||= SecureRandom.base64(30).gsub(/[+=\/]/,'')[0...10]
  end
end
