class Competition < ApplicationRecord
  validates :name, :start_date, :city, presence: true
  enum category: { G1G2: 1, GP: 2, JJOO: 3, TMA: 4 }
end
