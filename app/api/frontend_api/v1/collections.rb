class FrontendApi::V1::Collections < FrontendApi::V1::AuthorizedForShop
  namespace :collections do
    desc 'Return all collections'
    get do
      collections = Collection.all
      present collections, with: FrontendApi::V1::Entities::Collection
    end

    desc 'Create a collection'
    params do
      requires :collection, :type=>Hash do
        requires :title, type: String
      end
    end
    post do
      collection = Collection.new(params[:collection])
      if collection.valid? and collection.save
        present collection, with: FrontendApi::V1::Entities::Collection
      else
        resource_error_response(collection)
      end
    end
  end
end