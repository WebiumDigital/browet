class FrontendApi::V1::Authorized < Grape::API
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
end