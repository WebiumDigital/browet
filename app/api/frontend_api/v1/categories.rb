class FrontendApi::V1::Categories < FrontendApi::V1::AuthorizedForShop
  namespace :categories do
    desc 'Return all categories'
    get do
      categories = Category.all
      present categories, with: FrontendApi::V1::Entities::Category
    end

    desc 'Create a category'
    params do
      requires :category, :type=>Hash do
        requires :name, type: String
        requires :slug, type: String
      end
    end
    post do
      category = Category.new(params[:category])
      if category.valid? and category.save
        present category, with: FrontendApi::V1::Entities::Category
      else
        resource_error_response(category)
      end
    end

    desc 'Get a category'
    params do
      requires :id, type: Integer
    end
    get '/:id' do
      category = Category.find(params[:id])
      present category, with: FrontendApi::V1::Entities::Category
      present category.collections, with: FrontendApi::V1::Entities::Collection
    end

    desc 'Update a category'
    params do
      requires :id, type: Integer
      requires :category, :type=>Hash do
        requires :name, type: String
        requires :slug, type: String
      end
    end
    put '/:id' do
      category = Category.find(params[:id])
      category.attributes = params[:category]
      if category.valid? and category.save
        present category, with: FrontendApi::V1::Entities::Category
      else
        resource_error_response(category)
      end
    end

    desc 'Delete a category'
    params do
      requires :id, type: Integer
    end
    delete '/:id' do
      category = Category.find(params[:id])
      category.destroy!
    end
  end
end