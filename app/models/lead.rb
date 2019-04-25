class Lead < ApplicationRecord
  belongs_to :admin
  has_many :tasks
  has_many :projects, through: :tasks

end
