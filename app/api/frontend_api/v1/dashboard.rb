class FrontendApi::V1::Dashboard < FrontendApi::V1::Authorized
  namespace :dashboards do
    desc 'Return all shops user connected to'
    get do
      present current_shop, with: FrontendApi::V1::Entities::Dashboard
    end
  end
end