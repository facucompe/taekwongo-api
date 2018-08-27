class Training < ApplicationRecord
  validates :title, :user_id, :training_type, presence: true
  enum training_type:  {V:1,F:2}
  belongs_to :user
  has_many :measurements, dependent: :destroy
end
