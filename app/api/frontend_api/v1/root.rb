class FrontendApi::V1::Root < Grape::API
  # version 'v2', using: :path
  format :json

  include Grape::Kaminari
  paginate per_page: 10, max_per_page: 10

  mount FrontendApi::V1::Products
end