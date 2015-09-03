class FrontendApi::V1::Public < Grape::API
  mount FrontendApi::V1::Oauth
end