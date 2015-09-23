class FrontendApi::V1::Entities::Menu < FrontendApi::V1::Entities::Base
  root 'menus', 'menu'
  expose :id
  expose :name
  expose :slug
end