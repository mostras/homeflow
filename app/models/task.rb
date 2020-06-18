class Task < ApplicationRecord
  belongs_to :job, touch: true
  has_many_attached :photos

  validates :title, presence: true #penser a ajouter un longueur max
end
