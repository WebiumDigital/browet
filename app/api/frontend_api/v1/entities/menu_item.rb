class FrontendApi::V1::Entities::MenuItem < FrontendApi::V1::Entities::Base
  root 'menu_items', 'menu_items'
  expose :id, :item_id, :item_type
end