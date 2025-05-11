class Topic < ApplicationRecord
  belongs_to :chapter

  has_many :translations, class_name: "TopicTranslation", dependent: :destroy

  def translated_name
    Rails.cache.fetch("topic_name/#{id}/#{I18n.locale}") do
      translations.find_by(locale: I18n.locale)&.name ||
      "Untranslated name"
    end
  end

  def translated_content
    Rails.cache.fetch("topic_content/#{id}/#{I18n.locale}") do
      translations.find_by(locale: I18n.locale)&.content ||
      "Untranslated content"
    end
  end

  def translated_description
    Rails.cache.fetch("topic_description/#{id}/#{I18n.locale}") do
      translations.find_by(locale: I18n.locale)&.description ||
      "Untranslated descrilption"
    end
  end

  def to_param
    "#{id}-#{slug}"
  end
end
