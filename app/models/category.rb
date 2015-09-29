class Category < ActiveRecord::Base
  has_many :collection_to_categories
  has_many :collections, :through => :collection_to_categories

  validates :name, :presence => true
  validates :name, :slug, :uniqueness => true

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  private
  def should_generate_new_friendly_id?
    slug.blank?
  end

  def slug_candidates
    [
      :name,
      [:name, :id],
    ]
  end
end
