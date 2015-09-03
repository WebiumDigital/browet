class FrontendApi::V1::Entities::Shop < FrontendApi::V1::Entities::Base
  root 'shops', 'shop'
  expose :id, :name, :link

  private
  def link
    "http://#{object.subdomain}.#{Settings.app.host}"
  end
end