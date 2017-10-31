class Grocery < ActiveRecord::Base
  validates :name, presence: true
  validates :quantity, presence: true
  validates :quantity, numericality: true
end
