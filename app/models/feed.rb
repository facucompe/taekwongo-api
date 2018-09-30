class Feed < ApplicationRecord
  validates :title, :picture_url, presence: true
  has_many :feed_images, dependent: :destroy
  accepts_nested_attributes_for :feed_images, allow_destroy: true

  enum category: { refereeing: 0, rules: 1, general: 2 }
end
