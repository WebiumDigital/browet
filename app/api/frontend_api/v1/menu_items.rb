class FrontendApi::V1::MenuItems < FrontendApi::V1::AuthorizedForShop
  namespace :menu_items do
    desc 'Delete a MenuItem'
    params do
      requires :id, type: Integer
    end
    delete '/:id' do
      menu_item = MenuItem.find(params[:id])
      menu_item.destroy!
    end
  end
end