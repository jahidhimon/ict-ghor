class Chapter < ApplicationRecord
  has_many :translations, class_name: "ChapterTranslation", dependent: :destroy
  has_many :topics, dependent: :destroy

  def translated_name
    Rails.cache.fetch("chapter_name/#{id}/#{I18n.locale}") do
      translations.find_by(locale: I18n.locale)&.name ||
      "Untranslated Chapter"
    end
  end

  def to_param
    "#{id}-#{slug}"
  end
end
