class User < ApplicationRecord
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :role, presence: true
end
