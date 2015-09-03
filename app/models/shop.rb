class Shop < ActiveRecord::Base
  after_create :create_tenant
  after_destroy :delete_tenant
  before_validation :preset_database
  before_validation :preset_subdomain

  validates :name, :database, :subdomain, presence: true
  validates :name, :database, :subdomain, uniqueness: true
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters"}

  def create_tenant
    Apartment::Tenant.create(database)
  end

  def delete_tenant
    Apartment::Tenant.drop(database)
  end

  def preset_subdomain
    self.subdomain = name unless subdomain.present?
  end

  def preset_database
    self.database = name unless database.present?
  end
end
