class FileAttachment < ApplicationRecord
  belongs_to :poomse
  mount_uploader :link, ImageUploader
  enum file_type: { image: 0, video: 1 }
end
