class FrontendApi::V1::Products < FrontendApi::V1::Authorized
  namespace :products do
    desc 'Return all products'
    params do
      optional :query, type: String, desc: 'Search Query'
      optional :page, type: Integer, desc: 'Products Page'
      optional :per, type: Integer, desc: 'Products Per Page'
      optional :status, type: Integer, desc: 'Products Status'
    end
    get do
      products = Product.by_status_int(params[:status]).page(params[:page]).per(params[:per_page])
      present products, with: FrontendApi::V1::Entities::Product
      present products, with: FrontendApi::V1::Entities::PaginatedMeta
    end
  end
end