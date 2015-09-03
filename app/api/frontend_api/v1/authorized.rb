class FrontendApi::V1::Authorized < Grape::API
  # before do
    # @current_account = Account.find_by_subdomain(rails_request.subdomain)
    # error!({:errors=>['401 Unauthorized']}, 401) unless @current_account
    # Apartment::Tenant.switch(@current_account.database)

    # @current_storefront = Storefront.where(token: headers['X-Auth-Token']).first
    # error!({:errors=>['401 Unauthorized']}, 401)# unless @current_storefront
    # I18n.locale = @current_storefront.locale
  # end
  before do
    token = headers['Authorization'] && headers['Authorization'].split(' ').last
    @current_user = User.find_by_authentication_token(token)

    unauthorized_error! unless @current_user
  end

  helpers do
    def current_user
      @current_user
    end
  end

  mount FrontendApi::V1::Shops
  mount FrontendApi::V1::Products
end