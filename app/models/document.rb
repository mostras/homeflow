class Document < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  include PgSearch::Model

  pg_search_scope :search, against: [:title, :category]

  DOC_TYPE = %w[banque plan administratif]

  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: DOC_TYPE }
end
