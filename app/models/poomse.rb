class Poomse < ApplicationRecord
  has_many :file_attachments, dependent: :destroy
  validates :title, presence: true
  accepts_nested_attributes_for :file_attachments, allow_destroy: true
end
