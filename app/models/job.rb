class Job < ApplicationRecord
  belongs_to :user, touch: true
  has_many :tasks, dependent: :destroy

  validates :name, presence: true

  scope :completed, -> { where(completed: true) }
  scope :in_progress, -> { where(completed: false) }
  scope :pending, -> { where(completed: nil) }
end
