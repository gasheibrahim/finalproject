class User < ApplicationRecord
  has_secure_password
  has_secure_password
  has_many :products, dependent: :destroy
  validates :fullname, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phonenumber, presence: true
  validates :password_digest, presence: true
end
