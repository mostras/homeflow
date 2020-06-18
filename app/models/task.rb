class Task < ApplicationRecord
  belongs_to :job, touch: true
  has_many_attached :photos

  validates :title, presence: true, length: { maximum: 30,
    too_long: "ne peut contenir plus de 30 charatères" }
end
