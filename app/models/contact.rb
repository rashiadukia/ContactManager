class Contact < ApplicationRecord

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :mobile_no, presence: true, length: { is: 10 },
                        uniqueness: true
    belongs_to :user
end
