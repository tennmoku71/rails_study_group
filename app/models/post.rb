class Post < ApplicationRecord
  include FriendlyId
  friendly_id :random

  before_create do
    self.random = SecureRandom.hex(10)
  end
end
