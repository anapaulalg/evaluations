class Student < ApplicationRecord
  belongs_to :batch

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :image, presence: true
end
