class Community < ApplicationRecord
  has_many :users
  has_many :announcements
  has_many :buildings
  has_many :units, through: :buildings

  validates :name, presence: true, uniqueness: true
end
