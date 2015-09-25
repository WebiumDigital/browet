class FrontendApi::V1::Entities::Collection < FrontendApi::V1::Entities::Base
  root 'collections', 'collection'
  expose :id, :name, :slug, :category_ids
end