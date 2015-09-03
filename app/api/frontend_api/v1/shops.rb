class FrontendApi::V1::Shops < FrontendApi::V1::Authorized
  namespace :shops do
    desc 'Return all shops user connected to'
    get do
      shops = current_user.shops
      present shops, with: FrontendApi::V1::Entities::Shop
    end
  end
end