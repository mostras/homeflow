class Task < ApplicationRecord
  belongs_to :job
  has_many_attached :photos

  validates :title, presence: true #penser a ajouter un longueur max
end
