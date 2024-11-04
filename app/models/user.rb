class User < ApplicationRecord
  belongs_to :community
  has_many :announcements

  validates :first_name, presence: true, length: { in: 2..50 }
  validates :last_name,  presence: true, length: { in: 2..50 }
  validates :email,      presence: true, uniqueness: { case_sensitive: false }, format: { with: URI::MailTo::EMAIL_REGEXP }
end
