class Document < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  include PgSearch::Model

  pg_search_scope :search,
  against: [:title, :category],
  using: {
    tsearch: { prefix: true }
  }

  DOC_TYPE = %w[Banque Plans Contrats Assurance SAV Notaire Urbanisme Autres]

  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: DOC_TYPE }
  # validates :photo, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg', 'image/pdf'], message: 'Merci de choisir un document à joindre'

  validate :presence_photo

  private

  def presence_photo
    errors.add(:photo, 'Veuillez choisir un document') unless photo.attached?
  end
end
