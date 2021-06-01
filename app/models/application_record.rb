class ApplicationRecord < ActiveRecord::Base
  before_create :generate_token
  self.abstract_class = true

  def generate_token
    self.id = loop do
      random_token = SecureRandom.uuid
      break random_token unless self.class.exists?(id: random_token)
    end
  end
end
