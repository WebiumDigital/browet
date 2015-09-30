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
        requires :name, type: String
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

    desc 'Get a collection'
    params do
      requires :id, type: Integer
    end
    get '/:id' do
      collection = Collection.find(params[:id])
      present collection, with: FrontendApi::V1::Entities::Collection
    end

    desc 'Update a collection'
    params do
      requires :id, type: Integer
      requires :collection, :type=>Hash do
        requires :name, type: String
      end
    end
    put '/:id' do
      collection = Collection.find(params[:id])
      collection.attributes = params[:collection]
      if collection.valid? and collection.save
        present collection, with: FrontendApi::V1::Entities::Collection
      else
        resource_error_response(collection)
      end
    end

    desc 'Delete a collection'
    params do
      requires :id, type: Integer
    end
    delete '/:id' do
      collection = Collection.find(params[:id])
      collection.destroy!
    end
  end
end