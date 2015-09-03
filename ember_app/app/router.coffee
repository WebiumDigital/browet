`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'accounts'
  @route 'login'

  @route 'dashboard'
  @route 'products'

  @route 'protected'
  @route 'auth-error'

  @route 'about'

  @route 'shops'

`export default Router`
