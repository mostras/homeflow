class User < ApplicationRecord
  has_many :documents
  has_many :jobs
  has_many :tasks, through: :jobs
  has_one_attached :photo

  geocoded_by :full_address
  after_validation :geocode, if: :need_geocoding?

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :constructor, class_name: 'User', optional: true
  has_many :users, foreign_key: :constructor_id, dependent: :destroy

  scope :work_paused, -> { where(in_progress: false) }
  scope :work_in_progress, -> { where(in_progress: true) }

  def full_address
    "#{address_street}, #{address_city}"
  end

  def constructor?
    constructor_id.nil?
  end

  def clients
    users
  end

  def need_geocoding?
    will_save_change_to_address_street? || will_save_change_to_address_city?
  end
end
