class VideoTechnique < ApplicationRecord
  validates :title, :video_type, presence: true
  enum video_type: { attack:0, defense: 1, counterattack: 2, fist:3,
                     kick: 4, steps: 5, body_to_body: 6 }
  mount_uploader :link, ImageUploader
end
