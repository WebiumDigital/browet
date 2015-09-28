class FrontendApi::V1::Entities::Menu < FrontendApi::V1::Entities::Base
  root 'menus', 'menu'
  expose :id, :name, :slug, :item_ids
end