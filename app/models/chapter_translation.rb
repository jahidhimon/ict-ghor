class ChapterTranslation < ApplicationRecord
  belongs_to :chapter

  validates :locale, presence: true, inclusion: { in: I18n.available_locales.map(&:to_s) }
  validates :name, presence: true
end
