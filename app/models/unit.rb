class Unit < ApplicationRecord
  belongs_to :building

  validates :number, presence: true, uniqueness: { scope: :building_id }
end
