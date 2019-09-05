class Rental < ApplicationRecord
  has_many :stations 
  accepts_nested_attributes_for :stations
  validates :name , presence: true
  validates :price , presence: true,numericality: { only_integer: true }
  validates :address, presence: true
  validates :years, presence: true, numericality: { only_integer: true }
  validates :note , presence: true
end
