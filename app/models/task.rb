class Task < ApplicationRecord
  belongs_to :job

  validates :title, presence: true #penser a ajouter un longueur max
end
