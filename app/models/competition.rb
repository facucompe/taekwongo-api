class Competition < ApplicationRecord
  validates :title, :date, :city, presence: true
  enum category: { G1G2: 0, GP: 1, JJOO: 1, TMA: 2 }
end
