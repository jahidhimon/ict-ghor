class Chapter < ApplicationRecord
  has_many :translations, class_name: "ChapterTranslation", dependent: :destroy

  def translated_name
    translations.find_by(locale: I18n.locale)&.name ||
    translations.find_by(locale: I18n.default_locale)&.name ||
    "Untranslated Chapter"
  end

  def to_param
    "#{id}-#{slug}"
  end
end
