class User < ApplicationRecord
  has_secure_password
  has_many :ideas, dependent: :nullify
  has_many :reviews, dependent: :nullify

  validates(
    :email, 
    uniqueness: true,
    presence: true,
    format: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  )
end
