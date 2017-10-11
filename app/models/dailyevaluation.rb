class Dailyevaluation < ApplicationRecord
  belongs_to :student

  validates :evaluation, presence: true
  validates :date, uniqueness: true
  validates :remark, presence: false
end
