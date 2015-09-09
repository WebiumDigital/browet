class Product < ActiveRecord::Base
  STATUSES = {:draft=>0, :published=>1, :unpublished=>2, :archived=>3}
  AVAILABILITIES = {:available=>0, :outstock=>1, :preorder=>2 }
  enum status: STATUSES
  enum availability: AVAILABILITIES

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  def slug_candidates
    [
      :title,
      :title, :created_at
      # [:sku, :title],
      # [:sku, :title, :created_at]
    ]
  end

  # validates :gtin, numericality: { only_integer: true, greater_than_or_equal_to: 0}, allow_nil: true
  # validates_format_of :mpn, with: /\A[A-Za-z0-9а-яА-Я\-\#\/\_\s\.\\\,]*\z/

  scope :by_status_int, ->(status_int) { where(status: status_int) }
end
