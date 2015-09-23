class FrontendApi::V1::AuthorizedForShop < Grape::API
  before do
    @current_shop = Shop.where(subdomain: headers['Shop-Domain']).first

    shop_to_user_association = ShopToUser.where(user:@current_user, shop: @current_shop).first

    if @current_user and @current_shop and shop_to_user_association
      Apartment::Tenant.switch!(@current_shop.database)
    else
      unauthorized_error!
    end
  end

  helpers do
    def current_shop
      @current_shop
    end

    def resource_error_response resource
      error!({errors:resource.errors}, 422)
    end
  end

  mount FrontendApi::V1::Dashboard
  mount FrontendApi::V1::Menus
  mount FrontendApi::V1::Products
  mount FrontendApi::V1::Collections
end