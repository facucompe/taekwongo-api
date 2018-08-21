class Training < ApplicationRecord
  validates :title, :user_id presence: true
  enum type: { V: 1, F: 2}
end
