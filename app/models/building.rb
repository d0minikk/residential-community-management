class Building < ApplicationRecord
  belongs_to :community
  has_many :units

  validates :name, presence: true
end
