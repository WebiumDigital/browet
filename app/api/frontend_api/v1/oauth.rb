class FrontendApi::V1::Oauth < Grape::API
  namespace :oauth do
    desc 'Returns token'
    params do
      requires :username, type: String, desc: 'Email'
      requires :password, type: String, desc: 'Password'
    end
    post '/token' do
      user = User.find_by_email(params[:username])
      if user.present? and user.valid_password?(params[:password])
        present user, with: FrontendApi::V1::Entities::Oauth
      else
        error!({:error=>'Invalid credentials'}, 400)
      end
    end
  end
end