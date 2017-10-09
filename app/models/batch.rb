class Batch < ApplicationRecord
  has_many :students

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :start, presence: true
  validates :end, presence: true
end
