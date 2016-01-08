class JapaneseIndex < ActiveRecord::Base
  validates :romaji, presence: true
  validates :book, presence: true, length: { maximum: 1 }
  validates :page, presence: true, length: { maximum: 4 }
  validates_numericality_of :page, only_integer: true, greater_than: 0
end
