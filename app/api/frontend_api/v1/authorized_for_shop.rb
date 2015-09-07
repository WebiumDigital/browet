class FrontendApi::V1::AuthorizedForShop < Grape::API
  before do
    token = headers['Authorization'] && headers['Authorization'].split(' ').last
    @current_user = User.find_by_authentication_token(token)

    @current_shop = Shop.where(subdomain: headers['Shop-Domain']).first

    shop_to_user_associasion = ShopToUser.where(user:@current_user, shop: @current_shop).first

    if @current_user and @current_shop and shop_to_user_associasion
      Apartment::Tenant.switch!(@current_shop.database)
    else
      unauthorized_error!
    end
  end

  helpers do
    def current_user
      @current_user
    end

    def current_shop
      @current_shop
    end
  end

  mount FrontendApi::V1::Dashboard
  mount FrontendApi::V1::Products
end