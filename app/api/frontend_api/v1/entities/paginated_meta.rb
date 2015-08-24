class FrontendApi::V1::Entities::PaginatedMeta < FrontendApi::V1::Entities::Base
  present_collection true
  root 'meta', 'meta'

  expose :total_pages

  private
  def total_pages
    object[:items].total_pages
  end
end
