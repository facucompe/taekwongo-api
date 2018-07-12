class Feed < ApplicationRecord
  validates :title, :picture_url, presence: true
  enum category: { tournament: 0, rules: 1, arbitration: 2, other: 3 }
end
