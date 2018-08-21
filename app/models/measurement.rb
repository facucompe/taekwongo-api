class Measurement < ApplicationRecord
  validates :amount, :training_id presence: true
end
