class RefeeringImage < ApplicationRecord
  validates :link, presence: true
  mount_uploader :link, AttachmentUploader
  enum category: { competitor: 0, techniques_allowed_areas: 1, valid_points: 2,
                   prohibited_acts_or_sanctions: 3, decisions: 4, video_replay: 5,
                   signaling: 6, procedures: 7 }
end
