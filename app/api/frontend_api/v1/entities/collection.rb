class FrontendApi::V1::Entities::Collection < FrontendApi::V1::Entities::Base
  root 'collections', 'collection'
  expose :id
  expose :title
  expose :errors, if: lambda { |instance, options| instance.errors.any? }
end