class Station < ApplicationRecord
  belongs_to :rental 
  validates :route_name, presence: true 
  validates :station_name, presence: true 
  validates :walk_times, presence: true ,numericality: { only_integer: true }
end
