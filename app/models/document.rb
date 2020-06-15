class Document < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: %w(banque plan administratif) }

end
