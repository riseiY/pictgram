class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PASS_REGEX = /\A[a-z\d]+\z/i
  validates :name, presence: true
  validates :email, presence: true

  validates :email, format:{ with: VALID_EMAIL_REGEX }
  validates :password, format: { with: VALID_PASS_REGEX }

  validates :password, length:{in:8..32}
  validates :name, length:{in: 0..15}

  has_secure_password
end
