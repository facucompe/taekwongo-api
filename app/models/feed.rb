class Feed < ApplicationRecord
  validates :title, :picture_url, presence: true
  enum category: { refereeing: 0, rules: 1, general: 2 }
end
