class User < ApplicationRecord
  ROLES = [
    'guest',
    'admin',
    'dino_tamer'
  ]

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :role, presence: true, inclusion: { in: ROLES, allow_blank: true }
end
