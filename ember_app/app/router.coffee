`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'login'

  @route 'shops'

  @route 'dashboard'
  @route 'products'


#  @route 'about'
#  @route 'protected'
#  @route 'auth-error'

`export default Router`
