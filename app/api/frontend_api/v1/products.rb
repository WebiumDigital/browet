class FrontendApi::V1::Products < FrontendApi::V1::AuthorizedForShop
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

    desc 'Get a Product'
    params do
      requires :id, type: Integer
    end
    get '/:id' do
      product = Product.find(params[:id])
      present product, with: FrontendApi::V1::Entities::Product
    end
  end
end