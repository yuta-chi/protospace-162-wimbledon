class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :password_confirmation, presence: true, on: :create
  validates :username, presence: true
  validates :profile, presence: true
  validates :affiliation, presence: true
  validates :position, presence: true
end