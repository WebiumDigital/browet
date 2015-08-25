class FrontendApi::V1::Entities::Oauth < FrontendApi::V1::Entities::Base
  expose :access_token, :token_type, :account

  private

  def token_type
    :bearer
  end

  def access_token
    object.authentication_token
  end

  def account
    {id: object.id, name: object.email}
  end
end