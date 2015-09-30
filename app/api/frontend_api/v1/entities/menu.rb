class FrontendApi::V1::Entities::Menu < FrontendApi::V1::Entities::Base
  root 'menus', 'menu'
  expose :id, :name, :slug
  expose :menu_items, :with => FrontendApi::V1::Entities::MenuItem
end