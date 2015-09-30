class FrontendApi::V1::Entities::Product < FrontendApi::V1::Entities::Base
  root 'products', 'product'
  expose :id, :name, :description, :brand
  expose :status_int, :as=>:status
  expose :availability_int, :as=>:availability

  private

  def status_int
    Product::STATUSES[object.status.to_sym]
  end

  def availability_int
    Product::AVAILABILITIES[object.availability.to_sym]
  end
end