class Batch < ApplicationRecord
  def self.order_by_name
    order(:name)
  end

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :start, presence: true
  validates :end, presence: true
end
