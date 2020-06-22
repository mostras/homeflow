class User < ApplicationRecord
  has_many :documents
  has_many :jobs
  has_many :tasks, through: :jobs
  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :constructor, class_name: 'User', optional: true
  has_many :users, foreign_key: :constructor_id, dependent: :destroy

  scope :work_paused, -> { where(in_progress: false) }
  scope :work_in_progress, -> { where(in_progress: true) }

  def constructor?
    constructor_id.nil?
  end

  def clients
    users
  end
end
