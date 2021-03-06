class FrontendApi::V1::Menus < FrontendApi::V1::AuthorizedForShop
  namespace :menus do
    desc 'Return all LinkLists'
    get do
      menus = Menu.all
      present menus, with: FrontendApi::V1::Entities::Menu
    end

    desc 'Create a LinkList'
    params do
      requires :menu, :type=>Hash do
        requires :name, type: String
        requires :slug, type: String
      end
    end
    post do
      params['menu']['menu_items_attributes'] = params['menu'].delete('menu_items')
      menu = Menu.new(params[:menu])
      if menu.valid? and menu.save
        present menu, with: FrontendApi::V1::Entities::Menu
      else
        resource_error_response(menu)
      end
    end

    desc 'Get a LinkList'
    params do
      requires :id, type: Integer
    end
    get '/:id' do
      menu = Menu.find(params[:id])
      present menu, with: FrontendApi::V1::Entities::Menu
      items = menu.menu_items.map(&:item).uniq
      present items.find_all{|i| i.is_a?(Category)}, with: FrontendApi::V1::Entities::Category
      present items.find_all{|i| i.is_a?(Collection)}, with: FrontendApi::V1::Entities::Collection
    end

    desc 'Update a LinkList'
    params do
      requires :id, type: Integer
      requires :menu, :type=>Hash do
        requires :name, type: String
        requires :slug, type: String
      end
    end
    put '/:id' do
      menu = Menu.find(params[:id])
      params['menu']['menu_items_attributes'] = params['menu'].delete('menu_items')
      menu.attributes = params[:menu]
      if menu.valid? and menu.save
        present menu, with: FrontendApi::V1::Entities::Menu
      else
        resource_error_response(menu)
      end
    end

    desc 'Delete a LinkList'
    params do
      requires :id, type: Integer
    end
    delete '/:id' do
      menu = Menu.find(params[:id])
      menu.destroy!
    end
  end
end