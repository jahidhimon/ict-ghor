class TopicTranslation < ApplicationRecord
  belongs_to :topic

  has_rich_text :content
end
