class FrontendApi::V1::Entities::MenuItem < FrontendApi::V1::Entities::Base
  root 'menu_items', 'menu_item'
  expose :id

  expose :item_id
  expose :item_type_downcase, :as=>:item_type

  private

  def item_type_downcase
    object.item_type.downcase
  end
end