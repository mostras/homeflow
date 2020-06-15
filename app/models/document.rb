class Document < ApplicationRecord
  belongs_to :user

  DOC_TYPE = %w(banque plan administratif)

  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: DOC_TYPE }

end