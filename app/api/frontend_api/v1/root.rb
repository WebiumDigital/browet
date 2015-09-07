class FrontendApi::V1::Root < Grape::API
  # version 'v2', using: :path
  format :json

  include Grape::Kaminari
  paginate per_page: 10, max_per_page: 10

  helpers do
    def unauthorized_error!
      error!({:error=>'401 Unauthorized'}, 401)
    end
  end


  mount FrontendApi::V1::Public
  mount FrontendApi::V1::Authorized
  mount FrontendApi::V1::AuthorizedForShop
end