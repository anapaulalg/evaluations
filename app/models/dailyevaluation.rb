class Dailyevaluation < ApplicationRecord
  belongs_to :student

  validates :evaluation, presence: true
  validates :date, presence: true
  validates :remark, presence: false
end
