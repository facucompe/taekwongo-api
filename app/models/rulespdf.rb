class Rulespdf < ApplicationRecord
  validates :version, :pdf_url, presence: true
end
