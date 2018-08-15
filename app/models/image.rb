class Image < ApplicationRecord
  belongs_to :poomse
  mount_uploader :link, ImageUploader
end
