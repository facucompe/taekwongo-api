class FeedImage < ApplicationRecord
  belongs_to :feed
  validates :link, presence: true
  mount_uploader :link, AttachmentUploader
end
