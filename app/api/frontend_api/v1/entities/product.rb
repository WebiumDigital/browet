class FrontendApi::V1::Entities::Product < FrontendApi::V1::Entities::Base
  root 'products', 'product'
  expose :id, :title
end