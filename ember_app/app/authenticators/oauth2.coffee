`import OAuth2PasswordGrant from 'ember-simple-auth/authenticators/oauth2-password-grant'`
`import config from '../config/environment'`

Oauth2 = OAuth2PasswordGrant.extend
  serverTokenEndpoint: config['ember-simple-auth'].oauth2.serverTokenEndpoint

`export default Oauth2`