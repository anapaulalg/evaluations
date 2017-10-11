class Student < ApplicationRecord
  belongs_to :batch
  has_many :dailyevaluations, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :image, presence: true
end
