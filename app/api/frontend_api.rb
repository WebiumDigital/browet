require 'grape-swagger'
module FrontendApi
  class Root < Grape::API
    prefix 'api/frontend'
    mount FrontendApi::V1::Root
  end
end