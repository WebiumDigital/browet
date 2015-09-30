class Menu < ActiveRecord::Base
  has_many :menu_items, :class_name=>'MenuItem'

  validates :name, :presence => true
  validates :name, :slug, :uniqueness => true

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  accepts_nested_attributes_for :menu_items, :reject_if => proc {|attr| attr['item_id'].blank?}

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
