class Announcement < ApplicationRecord
  belongs_to :community
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
end
