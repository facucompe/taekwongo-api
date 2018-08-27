class Measurement < ApplicationRecord
  validates :magnitude, :training_id, presence: true
end
