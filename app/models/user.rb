class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true, on: :create
  validates :password, confirmation: true
  validates :username, presence: true
  validates :profile, presence: true
  validates :affiliation, presence: true
  validates :position, presence: true
end