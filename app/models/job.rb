class Job < ApplicationRecord
  belongs_to :user, touch: true
  has_many :tasks, dependent: :destroy

  validates :name, presence: true
end
