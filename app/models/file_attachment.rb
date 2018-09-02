class FileAttachment < ApplicationRecord
  belongs_to :poomse
  validates :link, :file_type, presence: true
  mount_uploader :link, AttachmentUploader
  enum file_type: { image: 0, video: 1 }
end
