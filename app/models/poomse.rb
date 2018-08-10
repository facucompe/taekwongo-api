class Poomse < ApplicationRecord
  has_many :images, dependent: :destroy
  validates :title, presence: true
  accepts_nested_attributes_for :images, allow_destroy: true
end
