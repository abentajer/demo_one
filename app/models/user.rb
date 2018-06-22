class User < ApplicationRecord
  has_many :comments

  validates :username,
            presence: true,
            length: {minimum: 2},
            uniqueness: {case_sensitive: false}

  VALID_EMAIL_REGEX= /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email,
            presence: true,
            length: {minimum: 2},
            uniqueness: true,
            format: {with: VALID_EMAIL_REGEX, message: "Not a valid email"}

end
