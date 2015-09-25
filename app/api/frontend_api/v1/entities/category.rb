class FrontendApi::V1::Entities::Category < FrontendApi::V1::Entities::Base
  root 'categories', 'category'
  expose :id, :name, :slug, :collection_ids
end