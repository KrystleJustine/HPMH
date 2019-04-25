class Admin < ApplicationRecord
  has_secure_password

  validates :name, presence: true

  has_many :leads
  has_many :tasks, through: :leads
  has_many :projects, through: :tasks
end
