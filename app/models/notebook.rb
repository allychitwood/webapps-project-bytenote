# Table generated by Carter Brown
class Notebook < ApplicationRecord
  VALID_NAME_REGEX = /\A[-\w ]+\z/i
  validates :name, presence: true, length: { maximum: 50 },
            format: { with: VALID_NAME_REGEX },
            uniqueness: { case_sensitive: false }
  # User-notebook relationship (1-N)
  belongs_to :user
  has_many :notes
end
