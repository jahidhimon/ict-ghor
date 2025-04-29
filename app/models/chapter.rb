class Chapter < ApplicationRecord
  after_validation :set_slug, only: [ :create, :update ]

  def to_param
    "#{id}-#{slug}"
  end

  private
  def set_slug
    self.slug = name.to_s.parameterize
  end
end
