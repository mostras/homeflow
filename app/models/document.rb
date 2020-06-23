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
end
