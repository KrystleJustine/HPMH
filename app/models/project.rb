class Project < ApplicationRecord
  has_many :tasks
  has_many :leads, through: :tasks

end
