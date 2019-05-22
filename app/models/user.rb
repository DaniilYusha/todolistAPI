class User < ApplicationRecord
  has_secure_password
  has_many :projects, dependent: :destroy
  has_many :tasks, through: :projects

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
