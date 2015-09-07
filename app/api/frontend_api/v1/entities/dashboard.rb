class FrontendApi::V1::Entities::Dashboard < FrontendApi::V1::Entities::Base
  root 'dashboards', 'dashboard'
  expose :id, :products

  private

  def id
    object.id
  end

  def products
    ::Product.count
  end
end