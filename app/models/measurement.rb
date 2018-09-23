class Measurement < ApplicationRecord
  validates :magnitude, :training_id, presence: true
  belongs_to :training
end
