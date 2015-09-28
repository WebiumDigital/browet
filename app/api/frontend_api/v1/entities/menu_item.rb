class FrontendApi::V1::Entities::MenuItem < FrontendApi::V1::Entities::Base
  expose :item_id, :as=>:id
  expose :item_type_downcase, :as=>:type

  private

  def item_type_downcase
    object.item_type.downcase
  end
end